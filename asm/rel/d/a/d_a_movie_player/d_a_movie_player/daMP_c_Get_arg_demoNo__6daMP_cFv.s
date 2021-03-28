lbl_80878BB8:
/* 80878BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878BBC  7C 08 02 A6 */	mflr r0
/* 80878BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878BC4  48 00 00 19 */	bl fopAcM_GetParam__FPCv
/* 80878BC8  54 63 CE 7E */	rlwinm r3, r3, 0x19, 0x19, 0x1f
/* 80878BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878BD0  7C 08 03 A6 */	mtlr r0
/* 80878BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80878BD8  4E 80 00 20 */	blr 
