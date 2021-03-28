lbl_8045C330:
/* 8045C330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045C334  7C 08 02 A6 */	mflr r0
/* 8045C338  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045C33C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045C340  93 C1 00 08 */	stw r30, 8(r1)
/* 8045C344  7C 7F 1B 78 */	mr r31, r3
/* 8045C348  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8045C34C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8045C350  40 82 00 D4 */	bne lbl_8045C424
/* 8045C354  7F E0 FB 79 */	or. r0, r31, r31
/* 8045C358  41 82 00 C0 */	beq lbl_8045C418
/* 8045C35C  7C 1E 03 78 */	mr r30, r0
/* 8045C360  4B C1 C2 C4 */	b __ct__16dBgS_MoveBgActorFv
/* 8045C364  3C 60 80 46 */	lis r3, __vt__9daBgObj_c@ha
/* 8045C368  38 03 CD CC */	addi r0, r3, __vt__9daBgObj_c@l
/* 8045C36C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 8045C370  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8045C374  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8045C378  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 8045C37C  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 8045C380  4B C2 73 E0 */	b __ct__10dCcD_GSttsFv
/* 8045C384  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8045C388  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8045C38C  90 7E 05 F4 */	stw r3, 0x5f4(r30)
/* 8045C390  38 03 00 20 */	addi r0, r3, 0x20
/* 8045C394  90 1E 05 F8 */	stw r0, 0x5f8(r30)
/* 8045C398  38 7E 06 18 */	addi r3, r30, 0x618
/* 8045C39C  3C 80 80 46 */	lis r4, __ct__8dCcD_TriFv@ha
/* 8045C3A0  38 84 C5 B4 */	addi r4, r4, __ct__8dCcD_TriFv@l
/* 8045C3A4  3C A0 80 46 */	lis r5, __dt__8dCcD_TriFv@ha
/* 8045C3A8  38 A5 C4 D4 */	addi r5, r5, __dt__8dCcD_TriFv@l
/* 8045C3AC  38 C0 01 5C */	li r6, 0x15c
/* 8045C3B0  38 E0 00 04 */	li r7, 4
/* 8045C3B4  4B F0 59 AC */	b __construct_array
/* 8045C3B8  3B DE 0B 88 */	addi r30, r30, 0xb88
/* 8045C3BC  7F C3 F3 78 */	mr r3, r30
/* 8045C3C0  4B C2 76 68 */	b __ct__12dCcD_GObjInfFv
/* 8045C3C4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8045C3C8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8045C3CC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8045C3D0  3C 60 80 46 */	lis r3, __vt__8cM3dGAab@ha
/* 8045C3D4  38 03 CD C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8045C3D8  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 8045C3DC  3C 60 80 46 */	lis r3, __vt__8cM3dGCyl@ha
/* 8045C3E0  38 03 CD B4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8045C3E4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8045C3E8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8045C3EC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8045C3F0  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8045C3F4  38 03 00 58 */	addi r0, r3, 0x58
/* 8045C3F8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 8045C3FC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8045C400  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8045C404  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8045C408  38 03 00 2C */	addi r0, r3, 0x2c
/* 8045C40C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8045C410  38 03 00 84 */	addi r0, r3, 0x84
/* 8045C414  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_8045C418:
/* 8045C418  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8045C41C  60 00 00 08 */	ori r0, r0, 8
/* 8045C420  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8045C424:
/* 8045C424  7F E3 FB 78 */	mr r3, r31
/* 8045C428  4B FF E5 C1 */	bl create1st__9daBgObj_cFv
/* 8045C42C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045C430  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045C434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045C438  7C 08 03 A6 */	mtlr r0
/* 8045C43C  38 21 00 10 */	addi r1, r1, 0x10
/* 8045C440  4E 80 00 20 */	blr 
