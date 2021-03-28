lbl_8046EC50:
/* 8046EC50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046EC54  7C 08 02 A6 */	mflr r0
/* 8046EC58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046EC5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046EC60  93 C1 00 08 */	stw r30, 8(r1)
/* 8046EC64  7C 7F 1B 78 */	mr r31, r3
/* 8046EC68  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8046EC6C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8046EC70  40 82 00 B4 */	bne lbl_8046ED24
/* 8046EC74  7F E0 FB 79 */	or. r0, r31, r31
/* 8046EC78  41 82 00 A0 */	beq lbl_8046ED18
/* 8046EC7C  7C 1E 03 78 */	mr r30, r0
/* 8046EC80  4B C0 99 A4 */	b __ct__16dBgS_MoveBgActorFv
/* 8046EC84  3C 60 80 47 */	lis r3, __vt__14daObjBurnBox_c@ha
/* 8046EC88  38 03 EF 48 */	addi r0, r3, __vt__14daObjBurnBox_c@l
/* 8046EC8C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 8046EC90  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8046EC94  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8046EC98  90 1E 05 C4 */	stw r0, 0x5c4(r30)
/* 8046EC9C  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 8046ECA0  4B C1 4A C0 */	b __ct__10dCcD_GSttsFv
/* 8046ECA4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8046ECA8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8046ECAC  90 7E 05 C4 */	stw r3, 0x5c4(r30)
/* 8046ECB0  38 03 00 20 */	addi r0, r3, 0x20
/* 8046ECB4  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 8046ECB8  3B DE 05 E8 */	addi r30, r30, 0x5e8
/* 8046ECBC  7F C3 F3 78 */	mr r3, r30
/* 8046ECC0  4B C1 4D 68 */	b __ct__12dCcD_GObjInfFv
/* 8046ECC4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8046ECC8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8046ECCC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8046ECD0  3C 60 80 47 */	lis r3, __vt__8cM3dGAab@ha
/* 8046ECD4  38 03 EF 3C */	addi r0, r3, __vt__8cM3dGAab@l
/* 8046ECD8  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 8046ECDC  3C 60 80 47 */	lis r3, __vt__8cM3dGCyl@ha
/* 8046ECE0  38 03 EF 30 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8046ECE4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8046ECE8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8046ECEC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8046ECF0  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8046ECF4  38 03 00 58 */	addi r0, r3, 0x58
/* 8046ECF8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8046ECFC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8046ED00  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8046ED04  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8046ED08  38 03 00 2C */	addi r0, r3, 0x2c
/* 8046ED0C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8046ED10  38 03 00 84 */	addi r0, r3, 0x84
/* 8046ED14  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_8046ED18:
/* 8046ED18  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8046ED1C  60 00 00 08 */	ori r0, r0, 8
/* 8046ED20  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8046ED24:
/* 8046ED24  7F E3 FB 78 */	mr r3, r31
/* 8046ED28  4B FF FC 15 */	bl create1st__14daObjBurnBox_cFv
/* 8046ED2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046ED30  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046ED34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046ED38  7C 08 03 A6 */	mtlr r0
/* 8046ED3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8046ED40  4E 80 00 20 */	blr 
