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

#ifndef H_Work_fap_fa_behavioral_H
#define H_Work_fap_fa_behavioral_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_fap_fa_behavioral: public HSim__s6 {
public:

    HSim__s1 SE[5];

/* subprogram name haddr */
void Fg(HSim__s7 *process,  char& V8,  char& Va, const char Cc, const char Ce);
    Work_fap_fa_behavioral(const char * name);
    ~Work_fap_fa_behavioral();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_fap_fa_behavioral(const char *name);

#endif
