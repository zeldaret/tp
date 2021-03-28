lbl_80167E3C:
/* 80167E3C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80167E40  7C 08 02 A6 */	mflr r0
/* 80167E44  90 01 00 64 */	stw r0, 0x64(r1)
/* 80167E48  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80167E4C  7C 65 1B 78 */	mr r5, r3
/* 80167E50  7C 9F 23 78 */	mr r31, r4
/* 80167E54  38 61 00 34 */	addi r3, r1, 0x34
/* 80167E58  7C A4 2B 78 */	mr r4, r5
/* 80167E5C  80 A5 01 80 */	lwz r5, 0x180(r5)
/* 80167E60  4B F2 F8 BD */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80167E64  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80167E68  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80167E6C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80167E70  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80167E74  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80167E78  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80167E7C  38 61 00 28 */	addi r3, r1, 0x28
/* 80167E80  7F E4 FB 78 */	mr r4, r31
/* 80167E84  38 A1 00 40 */	addi r5, r1, 0x40
/* 80167E88  48 0F EC AD */	bl __mi__4cXyzCFRC3Vec
/* 80167E8C  38 61 00 08 */	addi r3, r1, 8
/* 80167E90  38 81 00 28 */	addi r4, r1, 0x28
/* 80167E94  48 10 99 ED */	bl __ct__7cSGlobeFRC4cXyz
/* 80167E98  C0 21 00 08 */	lfs f1, 8(r1)
/* 80167E9C  C0 02 9D 34 */	lfs f0, lit_9398(r2)
/* 80167EA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80167EA4  40 80 00 3C */	bge lbl_80167EE0
/* 80167EA8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80167EAC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80167EB0  38 81 00 08 */	addi r4, r1, 8
/* 80167EB4  48 10 9C 01 */	bl Xyz__7cSGlobeCFv
/* 80167EB8  38 61 00 10 */	addi r3, r1, 0x10
/* 80167EBC  38 81 00 40 */	addi r4, r1, 0x40
/* 80167EC0  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80167EC4  48 0F EC 21 */	bl __pl__4cXyzCFRC3Vec
/* 80167EC8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80167ECC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80167ED0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80167ED4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80167ED8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80167EDC  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80167EE0:
/* 80167EE0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80167EE4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80167EE8  7C 08 03 A6 */	mtlr r0
/* 80167EEC  38 21 00 60 */	addi r1, r1, 0x60
/* 80167EF0  4E 80 00 20 */	blr 
