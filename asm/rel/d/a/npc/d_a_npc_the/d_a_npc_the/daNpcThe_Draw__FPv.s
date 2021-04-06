lbl_80AF9924:
/* 80AF9924  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF9928  7C 08 02 A6 */	mflr r0
/* 80AF992C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF9930  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AF9934  7C 7F 1B 78 */	mr r31, r3
/* 80AF9938  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80AF993C  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF9940  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF9944  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80AF9948  80 63 00 08 */	lwz r3, 8(r3)
/* 80AF994C  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 80AF9950  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80AF9954  3C 60 80 B0 */	lis r3, lit_4153@ha /* 0x80AFC418@ha */
/* 80AF9958  38 83 C4 18 */	addi r4, r3, lit_4153@l /* 0x80AFC418@l */
/* 80AF995C  80 64 00 00 */	lwz r3, 0(r4)
/* 80AF9960  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF9964  90 61 00 08 */	stw r3, 8(r1)
/* 80AF9968  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AF996C  80 04 00 08 */	lwz r0, 8(r4)
/* 80AF9970  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AF9974  38 7F 0D DC */	addi r3, r31, 0xddc
/* 80AF9978  38 81 00 08 */	addi r4, r1, 8
/* 80AF997C  4B 86 86 CD */	bl __ptmf_cmpr
/* 80AF9980  7C 60 00 34 */	cntlzw r0, r3
/* 80AF9984  54 04 D9 7E */	srwi r4, r0, 5
/* 80AF9988  7F E3 FB 78 */	mr r3, r31
/* 80AF998C  38 A0 00 00 */	li r5, 0
/* 80AF9990  3C C0 80 B0 */	lis r6, m__16daNpcThe_Param_c@ha /* 0x80AFBE0C@ha */
/* 80AF9994  38 C6 BE 0C */	addi r6, r6, m__16daNpcThe_Param_c@l /* 0x80AFBE0C@l */
/* 80AF9998  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80AF999C  38 C0 00 00 */	li r6, 0
/* 80AF99A0  38 E0 00 00 */	li r7, 0
/* 80AF99A4  4B 65 89 09 */	bl draw__8daNpcF_cFiifP11_GXColorS10i
/* 80AF99A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AF99AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF99B0  7C 08 03 A6 */	mtlr r0
/* 80AF99B4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF99B8  4E 80 00 20 */	blr 
