lbl_807CDF14:
/* 807CDF14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CDF18  7C 08 02 A6 */	mflr r0
/* 807CDF1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CDF20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CDF24  7C 7F 1B 78 */	mr r31, r3
/* 807CDF28  4B 8B 5B 00 */	b __ct__12dCcD_GObjInfFv
/* 807CDF2C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807CDF30  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807CDF34  90 1F 01 20 */	stw r0, 0x120(r31)
/* 807CDF38  3C 60 80 7D */	lis r3, __vt__8cM3dGAab@ha
/* 807CDF3C  38 03 F4 54 */	addi r0, r3, __vt__8cM3dGAab@l
/* 807CDF40  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 807CDF44  3C 60 80 7D */	lis r3, __vt__8cM3dGCyl@ha
/* 807CDF48  38 03 F4 48 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 807CDF4C  90 1F 01 38 */	stw r0, 0x138(r31)
/* 807CDF50  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 807CDF54  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 807CDF58  90 7F 01 20 */	stw r3, 0x120(r31)
/* 807CDF5C  38 03 00 58 */	addi r0, r3, 0x58
/* 807CDF60  90 1F 01 38 */	stw r0, 0x138(r31)
/* 807CDF64  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 807CDF68  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 807CDF6C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 807CDF70  38 03 00 2C */	addi r0, r3, 0x2c
/* 807CDF74  90 1F 01 20 */	stw r0, 0x120(r31)
/* 807CDF78  38 03 00 84 */	addi r0, r3, 0x84
/* 807CDF7C  90 1F 01 38 */	stw r0, 0x138(r31)
/* 807CDF80  7F E3 FB 78 */	mr r3, r31
/* 807CDF84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CDF88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CDF8C  7C 08 03 A6 */	mtlr r0
/* 807CDF90  38 21 00 10 */	addi r1, r1, 0x10
/* 807CDF94  4E 80 00 20 */	blr 
