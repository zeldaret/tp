lbl_80B8C3EC:
/* 80B8C3EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8C3F0  7C 08 02 A6 */	mflr r0
/* 80B8C3F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8C3F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B8C3FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B8C400  41 82 00 1C */	beq lbl_80B8C41C
/* 80B8C404  3C A0 80 B9 */	lis r5, __vt__17daNpc_zrA_Param_c@ha /* 0x80B8DA34@ha */
/* 80B8C408  38 05 DA 34 */	addi r0, r5, __vt__17daNpc_zrA_Param_c@l /* 0x80B8DA34@l */
/* 80B8C40C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B8C410  7C 80 07 35 */	extsh. r0, r4
/* 80B8C414  40 81 00 08 */	ble lbl_80B8C41C
/* 80B8C418  4B 74 29 25 */	bl __dl__FPv
lbl_80B8C41C:
/* 80B8C41C  7F E3 FB 78 */	mr r3, r31
/* 80B8C420  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B8C424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8C428  7C 08 03 A6 */	mtlr r0
/* 80B8C42C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8C430  4E 80 00 20 */	blr 
