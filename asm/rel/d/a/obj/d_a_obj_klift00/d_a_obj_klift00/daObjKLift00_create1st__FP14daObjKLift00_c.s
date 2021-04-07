lbl_8058C050:
/* 8058C050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C054  7C 08 02 A6 */	mflr r0
/* 8058C058  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C05C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058C060  93 C1 00 08 */	stw r30, 8(r1)
/* 8058C064  7C 7F 1B 78 */	mr r31, r3
/* 8058C068  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8058C06C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8058C070  40 82 00 D4 */	bne lbl_8058C144
/* 8058C074  7F E0 FB 79 */	or. r0, r31, r31
/* 8058C078  41 82 00 C0 */	beq lbl_8058C138
/* 8058C07C  7C 1E 03 78 */	mr r30, r0
/* 8058C080  4B AE C5 A5 */	bl __ct__16dBgS_MoveBgActorFv
/* 8058C084  3C 60 80 59 */	lis r3, __vt__14daObjKLift00_c@ha /* 0x8058C4CC@ha */
/* 8058C088  38 03 C4 CC */	addi r0, r3, __vt__14daObjKLift00_c@l /* 0x8058C4CC@l */
/* 8058C08C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 8058C090  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8058C094  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8058C098  90 1E 06 3C */	stw r0, 0x63c(r30)
/* 8058C09C  38 7E 06 40 */	addi r3, r30, 0x640
/* 8058C0A0  4B AF 76 C1 */	bl __ct__10dCcD_GSttsFv
/* 8058C0A4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8058C0A8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8058C0AC  90 7E 06 3C */	stw r3, 0x63c(r30)
/* 8058C0B0  38 03 00 20 */	addi r0, r3, 0x20
/* 8058C0B4  90 1E 06 40 */	stw r0, 0x640(r30)
/* 8058C0B8  38 7E 06 60 */	addi r3, r30, 0x660
/* 8058C0BC  3C 80 80 59 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x8058C1F4@ha */
/* 8058C0C0  38 84 C1 F4 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x8058C1F4@l */
/* 8058C0C4  3C A0 80 59 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x8058AF60@ha */
/* 8058C0C8  38 A5 AF 60 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x8058AF60@l */
/* 8058C0CC  38 C0 01 38 */	li r6, 0x138
/* 8058C0D0  38 E0 00 08 */	li r7, 8
/* 8058C0D4  4B DD 5C 8D */	bl __construct_array
/* 8058C0D8  3B DE 10 20 */	addi r30, r30, 0x1020
/* 8058C0DC  7F C3 F3 78 */	mr r3, r30
/* 8058C0E0  4B AF 79 49 */	bl __ct__12dCcD_GObjInfFv
/* 8058C0E4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8058C0E8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8058C0EC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8058C0F0  3C 60 80 59 */	lis r3, __vt__8cM3dGAab@ha /* 0x8058C500@ha */
/* 8058C0F4  38 03 C5 00 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8058C500@l */
/* 8058C0F8  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 8058C0FC  3C 60 80 59 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8058C50C@ha */
/* 8058C100  38 03 C5 0C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8058C50C@l */
/* 8058C104  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8058C108  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8058C10C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8058C110  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8058C114  38 03 00 58 */	addi r0, r3, 0x58
/* 8058C118  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8058C11C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8058C120  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8058C124  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8058C128  38 03 00 2C */	addi r0, r3, 0x2c
/* 8058C12C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8058C130  38 03 00 84 */	addi r0, r3, 0x84
/* 8058C134  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_8058C138:
/* 8058C138  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8058C13C  60 00 00 08 */	ori r0, r0, 8
/* 8058C140  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8058C144:
/* 8058C144  7F E3 FB 78 */	mr r3, r31
/* 8058C148  4B FF EE E5 */	bl create1st__14daObjKLift00_cFv
/* 8058C14C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058C150  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058C154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C158  7C 08 03 A6 */	mtlr r0
/* 8058C15C  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C160  4E 80 00 20 */	blr 
