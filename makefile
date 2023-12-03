# ソースファイルを動的に取得
SRCS := $(wildcard *.cpp)

# コンパイラの設定
CXX = g++
CXXFLAGS = --std=c++11

# ビルドターゲットの設定
compile:
	$(CXX) $(CXXFLAGS) $(SRCS) -o a.out

# 実行ターゲットの設定
run: 
	@make compile
	./a.out

# クリーンアップ
clean:
	rm -f a.out
