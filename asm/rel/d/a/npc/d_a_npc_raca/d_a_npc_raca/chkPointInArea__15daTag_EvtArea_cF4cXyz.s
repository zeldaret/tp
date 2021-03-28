lbl_80AB8E54:
/* 80AB8E54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AB8E58  7C 08 02 A6 */	mflr r0
/* 80AB8E5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AB8E60  3C A0 80 AC */	lis r5, lit_4040@ha
/* 80AB8E64  C0 25 8F 64 */	lfs f1, lit_4040@l(r5)
/* 80AB8E68  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80AB8E6C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80AB8E70  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80AB8E74  C0 04 00 00 */	lfs f0, 0(r4)
/* 80AB8E78  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AB8E7C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80AB8E80  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AB8E84  C0 04 00 08 */	lfs f0, 8(r4)
/* 80AB8E88  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AB8E8C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AB8E90  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80AB8E94  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80AB8E98  38 81 00 14 */	addi r4, r1, 0x14
/* 80AB8E9C  38 A1 00 08 */	addi r5, r1, 8
/* 80AB8EA0  4B 9D 3A AC */	b chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz
/* 80AB8EA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AB8EA8  7C 08 03 A6 */	mtlr r0
/* 80AB8EAC  38 21 00 30 */	addi r1, r1, 0x30
/* 80AB8EB0  4E 80 00 20 */	blr 
