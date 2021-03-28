lbl_80CA4DB8:
/* 80CA4DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA4DBC  7C 08 02 A6 */	mflr r0
/* 80CA4DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA4DC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA4DC8  7C 7F 1B 78 */	mr r31, r3
/* 80CA4DCC  4B 3D 3B 10 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CA4DD0  38 7F 06 EC */	addi r3, r31, 0x6ec
/* 80CA4DD4  81 9F 06 EC */	lwz r12, 0x6ec(r31)
/* 80CA4DD8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CA4DDC  7D 89 03 A6 */	mtctr r12
/* 80CA4DE0  4E 80 04 21 */	bctrl 
/* 80CA4DE4  38 60 00 01 */	li r3, 1
/* 80CA4DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA4DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA4DF0  7C 08 03 A6 */	mtlr r0
/* 80CA4DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA4DF8  4E 80 00 20 */	blr 
