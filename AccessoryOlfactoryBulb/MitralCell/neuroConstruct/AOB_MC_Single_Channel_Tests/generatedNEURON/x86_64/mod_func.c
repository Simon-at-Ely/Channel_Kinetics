#include <stdio.h>
#include "hocdec.h"
extern int nrnmpi_myid;
extern int nrn_nobanner_;

extern void _Gran_CaHVA_98_reg(void);
extern void _Gran_CaPool_98_reg(void);
extern void _Gran_KCa_98_reg(void);
extern void _KA_iAMC_ChannelML_reg(void);
extern void _Kdr_ChannelML_reg(void);
extern void _LeakConductance_reg(void);
extern void _NaP_iAMC_ChannelML_reg(void);
extern void _NaxSH0_ChannelML_reg(void);
extern void _NaxSH10_ChannelML_reg(void);

void modl_reg(){
  if (!nrn_nobanner_) if (nrnmpi_myid < 1) {
    fprintf(stderr, "Additional mechanisms from files\n");

    fprintf(stderr," Gran_CaHVA_98.mod");
    fprintf(stderr," Gran_CaPool_98.mod");
    fprintf(stderr," Gran_KCa_98.mod");
    fprintf(stderr," KA_iAMC_ChannelML.mod");
    fprintf(stderr," Kdr_ChannelML.mod");
    fprintf(stderr," LeakConductance.mod");
    fprintf(stderr," NaP_iAMC_ChannelML.mod");
    fprintf(stderr," NaxSH0_ChannelML.mod");
    fprintf(stderr," NaxSH10_ChannelML.mod");
    fprintf(stderr, "\n");
  }
  _Gran_CaHVA_98_reg();
  _Gran_CaPool_98_reg();
  _Gran_KCa_98_reg();
  _KA_iAMC_ChannelML_reg();
  _Kdr_ChannelML_reg();
  _LeakConductance_reg();
  _NaP_iAMC_ChannelML_reg();
  _NaxSH0_ChannelML_reg();
  _NaxSH10_ChannelML_reg();
}
