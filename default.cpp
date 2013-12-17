// Fruit of Light (Orange Strawberry)
// Som mudra, pekna a sikovna

#include <algorithm>
#include <cstdio>
#include <iostream>
#include <map>
#include <queue>
#include <set>
#include <string>
#include <tuple>
#include <vector>
#ifdef EBUG
#include "prettyprint_stl_containers.cpp"
#endif
using namespace std;

#ifdef EBUG
#define DEBUG(x) \
    cerr << "DEBUG (F " << __FUNCTION__ << ", L" << __LINE__ << "): " << #x << ": " << (x) << endl
#define DBG  if (1)
#define DPRINTF(...)  fprintf(stderr, __VA_ARGS__)
#define ASSERT(x) \
    if (!(x)) fprintf(stderr, "!!! L%d, F %s: Assertion `%s' failed!\n", __LINE__, __FUNCTION__, #x);
#else
#define DEBUG(x)
#define DBG if (0)
#define DPRINTF(...)
// #define ASSERT(x)  if (!(x)) fork()
#define ASSERT(x)  if (!(x)) while (1) cerr << "Ajeje";  // TLE (in case fork() doesn't cause security exception it's better than nothing)
#endif

#define FORRANGE(i, ma) for (int i = 0; i < (ma); ++i)
#define FORRANGEU(i, ma) for (uint i = 0; i < (ma); ++i)

// =============================================================================

typedef long long ll;

int main() {

    return 0;
}
