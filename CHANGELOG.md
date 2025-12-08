# Changelog

## 0.7.0 (2025-12-08)


### Features

* add AUTO option for Qt5Gamepad with Qt6 compatibility check ([51ee33a](https://github.com/pscosd/pythonscad/commit/51ee33a57b2c0ae1286ebc25eb6532d17d0d6efa))
* add icons to language selection menu in status bar ([cb69bc5](https://github.com/pscosd/pythonscad/commit/cb69bc5d370b40994caf4ae86dbe8727cb032b0a))
* add language selector to status bar with manual override support ([3658cc6](https://github.com/pscosd/pythonscad/commit/3658cc6c5ebd459ac3b0e23a1cb8cd1b91b6062e))
* add language-specific icons to editor tabs ([6fe2904](https://github.com/pscosd/pythonscad/commit/6fe29041d6f3b67a94f1a2375660cbb0bfaeaa88))
* add position property to Python object interface ([be103e9](https://github.com/pscosd/pythonscad/commit/be103e9e24c9dfa8394c2a1113709fef9551f67c))
* add Python wrapper module with operator overloads and install support ([b9898c4](https://github.com/pscosd/pythonscad/commit/b9898c42cd4f9bd8e421fa33709f326e0cfbcbcf))
* add PythonSCAD application icons for stable and nightly builds ([cb2dde3](https://github.com/pscosd/pythonscad/commit/cb2dde3c121e4008dec893d3e8694dd639622ea8))
* implement three-state CMake options for dependency handling ([2d99b55](https://github.com/pscosd/pythonscad/commit/2d99b55304672291bb3d771f07bc3c31c02675e9))
* **macos:** bundle Python framework for portable distribution ([8a4cdf8](https://github.com/pscosd/pythonscad/commit/8a4cdf89cfcad8382678785e2120f27bde9fcbb3))


### Bug Fixes

* 68 and [#69](https://github.com/pscosd/pythonscad/issues/69) ([cb3e05b](https://github.com/pscosd/pythonscad/commit/cb3e05b917631a5202bd0cf5b1128693b11d2c6b))
* add conditional install for lib3mf-dev and libqt5gamepad5-dev ([055ec4d](https://github.com/pscosd/pythonscad/commit/055ec4da6a7ae6785c18f3403115c88fa666f079))
* cmake: Correctly handle REQUIRED in FindLib3MF.cmake ([#6288](https://github.com/pscosd/pythonscad/issues/6288)) ([dac4638](https://github.com/pscosd/pythonscad/commit/dac4638afdcfb6d3f8555211a647defd9b116442))
* **cmake:** define EXECUTABLE_NAME before winconsole subdirectory ([e75de6f](https://github.com/pscosd/pythonscad/commit/e75de6f8a207527d85a95085cd489ad9054bf6b0))
* Disable manifold tests when ENABLE_MANIFOLD is OFF ([#6237](https://github.com/pscosd/pythonscad/issues/6237)) ([60fa74a](https://github.com/pscosd/pythonscad/commit/60fa74addddd49822bae67c48e8c477ca97d0e68))
* do not run tests requiring lib3mf if OpenSCAD was compiled without lib3mf ([14b69d9](https://github.com/pscosd/pythonscad/commit/14b69d9dc4df7ec3b688ae44a35c7a0da6349e25))
* Do not run tests requiring libfive if it is not enabled ([6a43d46](https://github.com/pscosd/pythonscad/commit/6a43d46e57d2310a87ae7b3ed56d82247cd42eae))
* Enable experimental features per default. ([7925af2](https://github.com/pscosd/pythonscad/commit/7925af2335c7acb2b544250e85b88d68ccd97263))
* Exclude .git files from macOS app bundle ([#6180](https://github.com/pscosd/pythonscad/issues/6180)) ([4c27c74](https://github.com/pscosd/pythonscad/commit/4c27c746dba0027bdceb43cad02aa2fa2c8f43cf)), closes [#6179](https://github.com/pscosd/pythonscad/issues/6179)
* guard manifold-specific code with ENABLE_MANIFOLD preprocessor directives ([10cd9c2](https://github.com/pscosd/pythonscad/commit/10cd9c297b096495acd4436131a17842df9feb95))
* improve CMake test configuration logic and conditional compilation ([#6221](https://github.com/pscosd/pythonscad/issues/6221)) ([5042c64](https://github.com/pscosd/pythonscad/commit/5042c64dc9aa113e3e96b1d61d0dd595007b4ca7))
* improve size calculation by directly computing geometry bounds ([4febd3a](https://github.com/pscosd/pythonscad/commit/4febd3a4c28acaf6cf5958096b065b00ccf176d9))
* **macos:** add EIGEN_DONT_ALIGN to prevent memory corruption ([0ed2f6c](https://github.com/pscosd/pythonscad/commit/0ed2f6cedce348c89d548d267882da94dea644cf))
* **macos:** create pythonscad-python symlink inside app bundle ([7e5a471](https://github.com/pscosd/pythonscad/commit/7e5a4718d4ec4ec844eb64eb0141d0bf3af126cc))
* **macos:** use correct Python3 version variables in install_name_tool ([ff10f1f](https://github.com/pscosd/pythonscad/commit/ff10f1fdee5271c0443d3404015cf271e89dbe69))
* make uni-get-dependencies.sh compatible with sh again. ([e948b2b](https://github.com/pscosd/pythonscad/commit/e948b2be3221100aa928df8047909a2d3da80116))
* Prevent auto-preview on startup when auto-reload is disabled ([#6137](https://github.com/pscosd/pythonscad/issues/6137)) ([3a36cb1](https://github.com/pscosd/pythonscad/commit/3a36cb171692212b7b4037bd6c588127d42bab2b))
* Re-add libcurl to uni-get-dependencies.sh ([84fa9b7](https://github.com/pscosd/pythonscad/commit/84fa9b7d5d1894508be32348343f8fd90a7af429))
* refactor: use 'auto' for num_rings calculation in SphereNode::createGeometry ([d66917d](https://github.com/pscosd/pythonscad/commit/d66917d45a92afa31579ee60978845544427359a))
* remove orphaned PROPERTIES DISABLED TRUE from CMakeLists.txt ([9f2abc5](https://github.com/pscosd/pythonscad/commit/9f2abc5601ca111895b10939695c9077b7dc8d70))
* Temporarily disable Linux build tests without marix as they need more extensive fixing first ([26a86fd](https://github.com/pscosd/pythonscad/commit/26a86fd1bf8e813700cc9e141993cc2a85b2b0b3))
* trust unsaved Python files to prevent segfault after canceled Save-As ([4924770](https://github.com/pscosd/pythonscad/commit/49247706efabda2d4c3284868881bb7e1fc57c6e))
* unwrap OpenSCADWrapper objects in function arguments ([56f15c2](https://github.com/pscosd/pythonscad/commit/56f15c215a4b70abf9509b99b8886aece8af15a8))
* use Python3 FindPackage module instead of Python for consistency ([f5a0590](https://github.com/pscosd/pythonscad/commit/f5a0590d99711fe38f3d573a267098aec9647c82))
* **windows:** add bsdiff dependency for libpython patch script ([f5ed3af](https://github.com/pscosd/pythonscad/commit/f5ed3af78e987c184b715a8d9bacaf1b6719a040))
* **windows:** add Clipper2 include directory for OpenSCADPy on Windows ([731ab23](https://github.com/pscosd/pythonscad/commit/731ab23709245606f1a02741a9f5dfec0ad5919e))
* **windows:** avoid 'Argument list too long' error in ar command ([ea709b6](https://github.com/pscosd/pythonscad/commit/ea709b68c7a714a07f95b37179602239ef632bf0))
* **windows:** change winconsole to launch pythonscad.exe instead of openscad.exe ([ffdd506](https://github.com/pscosd/pythonscad/commit/ffdd5062f16ede38d7a92f7ff1e13b3d6a191e1d))
* **windows:** copy pythonscad-python.exe instead of creating symlink ([5d7d898](https://github.com/pscosd/pythonscad/commit/5d7d898e453cc0e1a7a8869142c09ca8c4e5c334))
* **windows:** install bsdiff using pacman instead of pacboy ([a9ca6f5](https://github.com/pscosd/pythonscad/commit/a9ca6f5fa0305167b8de49cd2fad4afa01bc52a7))
* **windows:** remove redundant tar extraction step ([b49ee3a](https://github.com/pscosd/pythonscad/commit/b49ee3a36a166f22f916ea3ccad86a060f28feed))
* **windows:** replace unzip/unzstd with bsdtar for MSYS2 compatibility ([9a7a255](https://github.com/pscosd/pythonscad/commit/9a7a255d0238fda805f6109223165eeccd933f2b))
* **windows:** use bsdiff4 from pip instead of system bsdiff ([d8b581f](https://github.com/pscosd/pythonscad/commit/d8b581ffb86c2f3c49ab08cde0ee4dc39eaf6ed9))
* **windows:** use CURL_LIBRARIES from find_package on Windows ([872f933](https://github.com/pscosd/pythonscad/commit/872f933fe883adf9c81722fbf62659cad1999343))
* **windows:** wrap custom commands in bash for MSYS2 compatibility ([b7d50ec](https://github.com/pscosd/pythonscad/commit/b7d50ecf3ee1e59dea4aeaa57f767e9fa56b5e2d))


### Miscellaneous Chores

* release 0.7.0 ([#6](https://github.com/pscosd/pythonscad/issues/6)) ([51d4d73](https://github.com/pscosd/pythonscad/commit/51d4d73db063f74e8c84ccca1ef368ae4b67ff19))
