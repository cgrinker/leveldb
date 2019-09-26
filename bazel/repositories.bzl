load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def repositories():
    _maybe(
        http_archive,
        name = "com_github_gflags_gflags",
        sha256 = "6e16c8bc91b1310a44f3965e616383dbda48f83e8c1eaa2370a215057b00cabe",
        strip_prefix = "gflags-77592648e3f3be87d6c7123eb81cbad75f9aef5a",
        urls = [
            "https://mirror.bazel.build/github.com/gflags/gflags/archive/77592648e3f3be87d6c7123eb81cbad75f9aef5a.tar.gz",
            "https://github.com/gflags/gflags/archive/77592648e3f3be87d6c7123eb81cbad75f9aef5a.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "com_google_glog",
        sha256 = "dfc074b41a5b86fc5dda4f0e2e2d6cc5b21f798c9fcc8ed5fea9c8f7c4613be6",
        strip_prefix = "glog-dd2b93d761a19860190cb3fa92066c8031e912e3",
        urls = [
            "https://mirror.bazel.build/github.com/google/glog/archive/dd2b93d761a19860190cb3fa92066c8031e912e3.tar.gz",
            "https://github.com/google/glog/archive/dd2b93d761a19860190cb3fa92066c8031e912e3.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "com_google_googletest",
        sha256 = "c18f281fd6621bb264570b99860a0241939b4a251c9b1af709b811d33bc63af8",
        strip_prefix = "googletest-e3bd4cbeaeef3cee65a68a8bd3c535cb779e9b6d",
        urls = [
            "https://mirror.bazel.build/github.com/google/googletest/archive/e3bd4cbeaeef3cee65a68a8bd3c535cb779e9b6d.tar.gz",
            "https://github.com/google/googletest/archive/e3bd4cbeaeef3cee65a68a8bd3c535cb779e9b6d.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "com_github_cschuet_crc32c",
	    sha256 = "6a3b6ebd63bdca5d9d73a6f0ed1a10787d17ee70b26824ea9e664e3397c67ed7",
        strip_prefix = "crc32c-d80cad9d5244d28097a3caa0cbdffad03f656001",
        urls = [
            "https://github.com/cgrinker/crc32c/archive/d80cad9d5244d28097a3caa0cbdffad03f656001.zip",
        ],
    )

    _maybe(
        http_archive,
        name = "com_github_cschuet_snappy",
	    sha256 = "134993c94ae21f715516e783cfa7456d4e0c4d486af1af38a34792564c748a69",
        strip_prefix = "snappy-6c95fa9fdb36f22ed52db81abc6a63dfa5e0403b",
        urls = [
            "https://github.com/cgrinker/snappy/archive/6c95fa9fdb36f22ed52db81abc6a63dfa5e0403b.zip",
        ],
    )

    _maybe(
        http_archive,
        name = "com_github_google_leveldb",
        build_file = "@com_github_cschuet_leveldb//bazel/third_party/leveldb:leveldb.BUILD",
        strip_prefix = "leveldb-21304d41f77990b8edabbdab33b222bd5ceb5f18",
        sha256 = "d32883148dd2bdbde337f56d880ab04d79e3a1c6d526296a0cb44d7bbee4b995",
        urls = [
            "https://github.com/google/leveldb/archive/21304d41f77990b8edabbdab33b222bd5ceb5f18.zip",
        ],
    )
    
