lbl_802C6C1C:
/* 802C6C1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C6C20  7C 08 02 A6 */	mflr r0
/* 802C6C24  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C6C28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C6C2C  7C 7F 1B 78 */	mr r31, r3
/* 802C6C30  C0 22 C3 74 */	lfs f1, lit_3705(r2)
/* 802C6C34  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 802C6C38  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802C6C3C  41 82 00 34 */	beq lbl_802C6C70
/* 802C6C40  88 1F 01 B8 */	lbz r0, 0x1b8(r31)
/* 802C6C44  2C 00 00 64 */	cmpwi r0, 0x64
/* 802C6C48  41 82 00 20 */	beq lbl_802C6C68
/* 802C6C4C  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802C6C50  88 63 00 0C */	lbz r3, 0xc(r3)
/* 802C6C54  7C 63 07 74 */	extsb r3, r3
/* 802C6C58  4B D6 64 15 */	bl dComIfGp_getReverb__Fi
/* 802C6C5C  7C 64 1B 78 */	mr r4, r3
/* 802C6C60  7F E3 FB 78 */	mr r3, r31
/* 802C6C64  48 00 04 65 */	bl startStaticEnvSe__10Z2EnvSeMgrFSc
lbl_802C6C68:
/* 802C6C68  38 00 00 00 */	li r0, 0
/* 802C6C6C  98 1F 01 B8 */	stb r0, 0x1b8(r31)
lbl_802C6C70:
/* 802C6C70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C6C74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C6C78  7C 08 03 A6 */	mtlr r0
/* 802C6C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C6C80  4E 80 00 20 */	blr 
