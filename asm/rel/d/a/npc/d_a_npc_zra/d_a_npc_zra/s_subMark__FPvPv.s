lbl_80B8A3CC:
/* 80B8A3CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8A3D0  7C 08 02 A6 */	mflr r0
/* 80B8A3D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8A3D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B8A3DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B8A3E0  7C 7E 1B 78 */	mr r30, r3
/* 80B8A3E4  7C 9F 23 78 */	mr r31, r4
/* 80B8A3E8  4B 48 E8 F8 */	b fopAc_IsActor__FPv
/* 80B8A3EC  2C 03 00 00 */	cmpwi r3, 0
/* 80B8A3F0  41 82 00 30 */	beq lbl_80B8A420
/* 80B8A3F4  A8 1E 00 08 */	lha r0, 8(r30)
/* 80B8A3F8  2C 00 02 85 */	cmpwi r0, 0x285
/* 80B8A3FC  40 82 00 24 */	bne lbl_80B8A420
/* 80B8A400  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B8A404  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80B8A408  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B8A40C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B8A410  7C 03 00 40 */	cmplw r3, r0
/* 80B8A414  40 82 00 0C */	bne lbl_80B8A420
/* 80B8A418  7F C3 F3 78 */	mr r3, r30
/* 80B8A41C  48 00 00 08 */	b lbl_80B8A424
lbl_80B8A420:
/* 80B8A420  38 60 00 00 */	li r3, 0
lbl_80B8A424:
/* 80B8A424  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B8A428  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B8A42C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8A430  7C 08 03 A6 */	mtlr r0
/* 80B8A434  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8A438  4E 80 00 20 */	blr 
