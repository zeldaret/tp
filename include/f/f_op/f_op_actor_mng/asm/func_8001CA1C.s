/* 8001CA1C 0001995C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8001CA20 00019960  7C 08 02 A6 */ mflr r0
/* 8001CA24 00019964  90 01 00 24 */ stw r0, 0x24(r1)
/* 8001CA28 00019968  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 8001CA2C 0001996C  3C 80 80 3F */ lis r4, lbl_803F6094@ha
/* 8001CA30 00019970  38 84 60 94 */ addi r4, r4, lbl_803F6094@l
/* 8001CA34 00019974  7C 60 07 74 */ extsb r0, r3
/* 8001CA38 00019978  1C 00 04 04 */ mulli r0, r0, 0x404
/* 8001CA3C 0001997C  7C 64 02 14 */ add r3, r4, r0
/* 8001CA40 00019980  80 63 03 FC */ lwz r3, 0x3fc(r3)
/* 8001CA44 00019984  48 00 22 6D */ bl fopScnM_SearchByID__FUi
/* 8001CA48 00019988  7C 7F 1B 78 */ mr r31, r3
/* 8001CA4C 0001998C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8001CA50 00019990  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8001CA54 00019994  80 63 5D AC */ lwz r3, 0x5dac(r3)
/* 8001CA58 00019998  81 83 06 28 */ lwz r12, 0x628(r3)
/* 8001CA5C 0001999C  81 8C 00 FC */ lwz r12, 0xfc(r12)
/* 8001CA60 000199A0  7D 89 03 A6 */ mtctr r12
/* 8001CA64 000199A4  4E 80 04 21 */ bctrl
/* 8001CA68 000199A8  90 61 00 08 */ stw r3, 8(r1)
/*.global fpcSch_JudgeByID*/
/* 8001CA6C 000199AC  3C 60 80 02 */ lis r3, fpcSch_JudgeByID@ha
/*.global fpcSch_JudgeByID*/
/* 8001CA70 000199B0  38 63 35 90 */ addi r3, r3, fpcSch_JudgeByID@l
/* 8001CA74 000199B4  38 81 00 08 */ addi r4, r1, 8
/* 8001CA78 000199B8  4B FF CD 81 */ bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8001CA7C 000199BC  28 03 00 00 */ cmplwi r3, 0
/* 8001CA80 000199C0  41 82 00 14 */ beq lbl_8001CA94
/* 8001CA84 000199C4  88 03 04 96 */ lbz r0, 0x496(r3)
/* 8001CA88 000199C8  28 00 00 02 */ cmplwi r0, 2
/* 8001CA8C 000199CC  40 82 00 08 */ bne lbl_8001CA94
/* 8001CA90 000199D0  48 00 00 34 */ b lbl_8001CAC4
lbl_8001CA94:
/* 8001CA94 000199D4  80 6D 87 C0 */ lwz r3, lbl_80450D40-_SDA_BASE_(r13)
/* 8001CA98 000199D8  80 9F 00 B4 */ lwz r4, 0xb4(r31)
/* 8001CA9C 000199DC  48 00 3B B1 */ bl fpcBs_Is_JustOfType
/* 8001CAA0 000199E0  2C 03 00 00 */ cmpwi r3, 0
/* 8001CAA4 000199E4  41 82 00 0C */ beq lbl_8001CAB0
/* 8001CAA8 000199E8  80 7F 00 C8 */ lwz r3, 0xc8(r31)
/* 8001CAAC 000199EC  48 00 00 08 */ b lbl_8001CAB4
lbl_8001CAB0:
/* 8001CAB0 000199F0  38 60 FF FF */ li r3, -1
lbl_8001CAB4:
/*.global enemySearchJugge__FPvPv*/
/* 8001CAB4 000199F4  3C 80 80 02 */ lis r4, enemySearchJugge__FPvPv@ha
/*.global enemySearchJugge__FPvPv*/
/* 8001CAB8 000199F8  38 84 C9 CC */ addi r4, r4, enemySearchJugge__FPvPv@l
/* 8001CABC 000199FC  38 A0 00 00 */ li r5, 0
/* 8001CAC0 00019A00  48 00 58 F5 */ bl fpcM_JudgeInLayer
lbl_8001CAC4:
/* 8001CAC4 00019A04  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 8001CAC8 00019A08  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8001CACC 00019A0C  7C 08 03 A6 */ mtlr r0
/* 8001CAD0 00019A10  38 21 00 20 */ addi r1, r1, 0x20
/* 8001CAD4 00019A14  4E 80 00 20 */ blr