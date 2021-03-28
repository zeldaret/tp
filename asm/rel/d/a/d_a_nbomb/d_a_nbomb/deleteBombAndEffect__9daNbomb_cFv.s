lbl_804CC2D4:
/* 804CC2D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CC2D8  7C 08 02 A6 */	mflr r0
/* 804CC2DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CC2E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CC2E4  7C 7F 1B 78 */	mr r31, r3
/* 804CC2E8  4B B4 D9 94 */	b fopAcM_delete__FP10fopAc_ac_c
/* 804CC2EC  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CC2F0  60 00 00 40 */	ori r0, r0, 0x40
/* 804CC2F4  90 1F 0B 4C */	stw r0, 0xb4c(r31)
/* 804CC2F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CC2FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CC300  7C 08 03 A6 */	mtlr r0
/* 804CC304  38 21 00 10 */	addi r1, r1, 0x10
/* 804CC308  4E 80 00 20 */	blr 
