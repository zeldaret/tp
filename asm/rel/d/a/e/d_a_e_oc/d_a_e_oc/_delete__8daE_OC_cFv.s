lbl_80734B6C:
/* 80734B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80734B70  7C 08 02 A6 */	mflr r0
/* 80734B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80734B78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80734B7C  7C 7F 1B 78 */	mr r31, r3
/* 80734B80  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80734B84  80 9F 06 A4 */	lwz r4, 0x6a4(r31)
/* 80734B88  4B 8F 84 81 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80734B8C  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80734B90  3C 80 80 73 */	lis r4, d_a_e_oc__stringBase0@ha /* 0x80735D0C@ha */
/* 80734B94  38 84 5D 0C */	addi r4, r4, d_a_e_oc__stringBase0@l /* 0x80735D0C@l */
/* 80734B98  38 84 00 05 */	addi r4, r4, 5
/* 80734B9C  4B 8F 84 6D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80734BA0  88 1F 0E 84 */	lbz r0, 0xe84(r31)
/* 80734BA4  28 00 00 00 */	cmplwi r0, 0
/* 80734BA8  41 82 00 10 */	beq lbl_80734BB8
/* 80734BAC  38 00 00 00 */	li r0, 0
/* 80734BB0  3C 60 80 73 */	lis r3, data_80736050@ha /* 0x80736050@ha */
/* 80734BB4  98 03 60 50 */	stb r0, data_80736050@l(r3)  /* 0x80736050@l */
lbl_80734BB8:
/* 80734BB8  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80734BBC  28 00 00 00 */	cmplwi r0, 0
/* 80734BC0  41 82 00 18 */	beq lbl_80734BD8
/* 80734BC4  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80734BC8  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 80734BCC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80734BD0  7D 89 03 A6 */	mtctr r12
/* 80734BD4  4E 80 04 21 */	bctrl 
lbl_80734BD8:
/* 80734BD8  38 60 00 01 */	li r3, 1
/* 80734BDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80734BE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80734BE4  7C 08 03 A6 */	mtlr r0
/* 80734BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80734BEC  4E 80 00 20 */	blr 
