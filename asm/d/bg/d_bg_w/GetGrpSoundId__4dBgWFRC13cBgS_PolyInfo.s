lbl_8007DF58:
/* 8007DF58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007DF5C  7C 08 02 A6 */	mflr r0
/* 8007DF60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007DF64  81 83 00 04 */	lwz r12, 4(r3)
/* 8007DF68  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8007DF6C  7D 89 03 A6 */	mtctr r12
/* 8007DF70  4E 80 04 21 */	bctrl 
/* 8007DF74  54 63 AE 3E */	rlwinm r3, r3, 0x15, 0x18, 0x1f
/* 8007DF78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007DF7C  7C 08 03 A6 */	mtlr r0
/* 8007DF80  38 21 00 10 */	addi r1, r1, 0x10
/* 8007DF84  4E 80 00 20 */	blr 
