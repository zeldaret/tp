/* 8002FAE8 0002CA28  38 60 00 00 */ li r3, 0
/* 8002FAEC 0002CA2C  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 8002FAF0 0002CA30  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 8002FAF4 0002CA34  3C 84 00 02 */ addis r4, r4, 2
/* 8002FAF8 0002CA38  88 A4 DE 09 */ lbz r5, -0x21f7(r4)
/* 8002FAFC 0002CA3C  28 05 00 FF */ cmplwi r5, 0xff
/* 8002FB00 0002CA40  4D 82 00 20 */ beqlr
/* 8002FB04 0002CA44  88 04 DE 0A */ lbz r0, -0x21f6(r4)
/* 8002FB08 0002CA48  28 00 00 FF */ cmplwi r0, 0xff
/* 8002FB0C 0002CA4C  4D 82 00 20 */ beqlr
/* 8002FB10 0002CA50  7C 05 00 40 */ cmplw r5, r0
/* 8002FB14 0002CA54  4C 82 00 20 */ bnelr
/* 8002FB18 0002CA58  38 60 00 01 */ li r3, 1
/* 8002FB1C 0002CA5C  4E 80 00 20 */ blr
