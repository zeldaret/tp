lbl_8063CC90:
/* 8063CC90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063CC94  7C 08 02 A6 */	mflr r0
/* 8063CC98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063CC9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8063CCA0  7C 7F 1B 78 */	mr r31, r3
/* 8063CCA4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702FC@ha */
/* 8063CCA8  38 03 02 FC */	addi r0, r3, 0x02FC /* 0x000702FC@l */
/* 8063CCAC  90 01 00 08 */	stw r0, 8(r1)
/* 8063CCB0  38 7F 06 48 */	addi r3, r31, 0x648
/* 8063CCB4  38 81 00 08 */	addi r4, r1, 8
/* 8063CCB8  38 A0 00 00 */	li r5, 0
/* 8063CCBC  38 C0 FF FF */	li r6, -1
/* 8063CCC0  81 9F 06 58 */	lwz r12, 0x658(r31)
/* 8063CCC4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8063CCC8  7D 89 03 A6 */	mtctr r12
/* 8063CCCC  4E 80 04 21 */	bctrl 
/* 8063CCD0  80 7F 06 68 */	lwz r3, 0x668(r31)
/* 8063CCD4  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 8063CCD8  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8063CCDC  4B FF 2F 10 */	b onIceBreak__8daB_YO_cFUs
/* 8063CCE0  7F E3 FB 78 */	mr r3, r31
/* 8063CCE4  4B 9D CF 98 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8063CCE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8063CCEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8063CCF0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8063CCF4  38 63 02 10 */	addi r3, r3, 0x210
/* 8063CCF8  80 9F 0B 30 */	lwz r4, 0xb30(r31)
/* 8063CCFC  4B A0 EB B8 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 8063CD00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8063CD04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063CD08  7C 08 03 A6 */	mtlr r0
/* 8063CD0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8063CD10  4E 80 00 20 */	blr 
