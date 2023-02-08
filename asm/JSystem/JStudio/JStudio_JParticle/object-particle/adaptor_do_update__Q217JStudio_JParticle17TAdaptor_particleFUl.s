lbl_8028E980:
/* 8028E980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028E984  7C 08 02 A6 */	mflr r0
/* 8028E988  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028E98C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028E990  7C 7F 1B 78 */	mr r31, r3
/* 8028E994  80 63 01 C0 */	lwz r3, 0x1c0(r3)
/* 8028E998  28 03 00 00 */	cmplwi r3, 0
/* 8028E99C  41 82 00 8C */	beq lbl_8028EA28
/* 8028E9A0  80 1F 01 C4 */	lwz r0, 0x1c4(r31)
/* 8028E9A4  7C 00 18 40 */	cmplw r0, r3
/* 8028E9A8  40 80 00 80 */	bge lbl_8028EA28
/* 8028E9AC  7C 00 22 14 */	add r0, r0, r4
/* 8028E9B0  90 1F 01 C4 */	stw r0, 0x1c4(r31)
/* 8028E9B4  80 7F 01 C4 */	lwz r3, 0x1c4(r31)
/* 8028E9B8  80 1F 01 C0 */	lwz r0, 0x1c0(r31)
/* 8028E9BC  7C 03 00 40 */	cmplw r3, r0
/* 8028E9C0  41 80 00 68 */	blt lbl_8028EA28
/* 8028E9C4  88 1F 01 B8 */	lbz r0, 0x1b8(r31)
/* 8028E9C8  2C 00 00 02 */	cmpwi r0, 2
/* 8028E9CC  41 82 00 50 */	beq lbl_8028EA1C
/* 8028E9D0  40 80 00 10 */	bge lbl_8028E9E0
/* 8028E9D4  2C 00 00 01 */	cmpwi r0, 1
/* 8028E9D8  40 80 00 14 */	bge lbl_8028E9EC
/* 8028E9DC  48 00 00 40 */	b lbl_8028EA1C
lbl_8028E9E0:
/* 8028E9E0  2C 00 00 04 */	cmpwi r0, 4
/* 8028E9E4  40 80 00 38 */	bge lbl_8028EA1C
/* 8028E9E8  48 00 00 10 */	b lbl_8028E9F8
lbl_8028E9EC:
/* 8028E9EC  38 00 00 02 */	li r0, 2
/* 8028E9F0  98 1F 01 B8 */	stb r0, 0x1b8(r31)
/* 8028E9F4  48 00 00 28 */	b lbl_8028EA1C
lbl_8028E9F8:
/* 8028E9F8  80 7F 01 A0 */	lwz r3, 0x1a0(r31)
/* 8028E9FC  80 9F 01 A4 */	lwz r4, 0x1a4(r31)
/* 8028EA00  81 83 00 00 */	lwz r12, 0(r3)
/* 8028EA04  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8028EA08  7D 89 03 A6 */	mtctr r12
/* 8028EA0C  4E 80 04 21 */	bctrl 
/* 8028EA10  38 00 00 00 */	li r0, 0
/* 8028EA14  90 1F 01 A4 */	stw r0, 0x1a4(r31)
/* 8028EA18  98 1F 01 B8 */	stb r0, 0x1b8(r31)
lbl_8028EA1C:
/* 8028EA1C  38 00 00 00 */	li r0, 0
/* 8028EA20  90 1F 01 C0 */	stw r0, 0x1c0(r31)
/* 8028EA24  90 1F 01 C4 */	stw r0, 0x1c4(r31)
lbl_8028EA28:
/* 8028EA28  88 1F 01 B5 */	lbz r0, 0x1b5(r31)
/* 8028EA2C  28 00 00 00 */	cmplwi r0, 0
/* 8028EA30  41 82 00 24 */	beq lbl_8028EA54
/* 8028EA34  88 1F 01 B7 */	lbz r0, 0x1b7(r31)
/* 8028EA38  28 00 00 00 */	cmplwi r0, 0
/* 8028EA3C  41 82 00 18 */	beq lbl_8028EA54
/* 8028EA40  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 8028EA44  28 00 00 00 */	cmplwi r0, 0
/* 8028EA48  40 82 00 0C */	bne lbl_8028EA54
/* 8028EA4C  7F E3 FB 78 */	mr r3, r31
/* 8028EA50  48 00 06 B9 */	bl beginParticle_fadeIn___Q217JStudio_JParticle17TAdaptor_particleFv
lbl_8028EA54:
/* 8028EA54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028EA58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EA5C  7C 08 03 A6 */	mtlr r0
/* 8028EA60  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EA64  4E 80 00 20 */	blr 
