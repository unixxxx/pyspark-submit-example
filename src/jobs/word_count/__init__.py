from operator import add


def get_keyval(row):
    words = filter(lambda r: r is not None, row)
    return [[w.strip().lower(), 1] for w in words]


def run_job(spark, config):
    """ Run words count """
    df = spark.read.csv(f"{config.get('source_data_path')}/movies.csv")
    mapped_rdd = df.rdd.flatMap(lambda row: get_keyval(row))
    counts_rdd = mapped_rdd.reduceByKey(add)
    count = counts_rdd.collect()
    print(count)
    return count
