/* Include files */

#include "half_bridge_inverter_cgxe.h"
#include "m_1mVk2EwqbKNW1Ud77dzFNB.h"

unsigned int cgxe_half_bridge_inverter_method_dispatcher(SimStruct* S, int_T
  method, void* data)
{
  if (ssGetChecksum0(S) == 1339995708 &&
      ssGetChecksum1(S) == 1456299849 &&
      ssGetChecksum2(S) == 1322850947 &&
      ssGetChecksum3(S) == 3653059202) {
    method_dispatcher_1mVk2EwqbKNW1Ud77dzFNB(S, method, data);
    return 1;
  }

  return 0;
}
