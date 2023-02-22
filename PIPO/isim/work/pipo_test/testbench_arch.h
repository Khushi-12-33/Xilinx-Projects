////////////////////////////////////////////////////////////////////////////////
//   ____  ____   
//  /   /\/   /  
// /___/  \  /   
// \   \   \/  
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /---/   /\     
// \   \  /  \  
//  \___\/\___\
////////////////////////////////////////////////////////////////////////////////

#ifndef H_Work_pipo_test_testbench_arch_H
#define H_Work_pipo_test_testbench_arch_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_pipo_test_testbench_arch: public HSim__s6 {
public:


HSimFileVar Results;
HSim__s4 VR;
HSimAccessVar VU;
HSim__s4 CY;
HSim__s4 C12;
HSim__s4 C15;
    HSim__s1 SA[4];
    Work_pipo_test_testbench_arch(const char * name);
    ~Work_pipo_test_testbench_arch();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_pipo_test_testbench_arch(const char *name);

#endif
