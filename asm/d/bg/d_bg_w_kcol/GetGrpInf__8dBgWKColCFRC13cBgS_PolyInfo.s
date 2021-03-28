lbl_8007EB30:
/* 8007EB30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007EB34  7C 08 02 A6 */	mflr r0
/* 8007EB38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007EB3C  A0 04 00 00 */	lhz r0, 0(r4)
/* 8007EB40  80 83 00 18 */	lwz r4, 0x18(r3)
/* 8007EB44  80 84 00 08 */	lwz r4, 8(r4)
/* 8007EB48  54 00 20 36 */	slwi r0, r0, 4
/* 8007EB4C  7C 84 02 14 */	add r4, r4, r0
/* 8007EB50  A0 84 00 0E */	lhz r4, 0xe(r4)
/* 8007EB54  38 63 00 1C */	addi r3, r3, 0x1c
/* 8007EB58  4B FF 55 85 */	bl getGrpCode__6dBgPlcCFi
/* 8007EB5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007EB60  7C 08 03 A6 */	mtlr r0
/* 8007EB64  38 21 00 10 */	addi r1, r1, 0x10
/* 8007EB68  4E 80 00 20 */	blr 
