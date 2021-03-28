lbl_80BE4990:
/* 80BE4990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE4994  7C 08 02 A6 */	mflr r0
/* 80BE4998  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE499C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE49A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE49A4  7C 7F 1B 78 */	mr r31, r3
/* 80BE49A8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BE49AC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BE49B0  40 82 00 34 */	bne lbl_80BE49E4
/* 80BE49B4  7F E0 FB 79 */	or. r0, r31, r31
/* 80BE49B8  41 82 00 20 */	beq lbl_80BE49D8
/* 80BE49BC  7C 1E 03 78 */	mr r30, r0
/* 80BE49C0  4B 49 3C 64 */	b __ct__16dBgS_MoveBgActorFv
/* 80BE49C4  3C 60 80 BE */	lis r3, __vt__14daObjFallObj_c@ha
/* 80BE49C8  38 03 4B 8C */	addi r0, r3, __vt__14daObjFallObj_c@l
/* 80BE49CC  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BE49D0  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 80BE49D4  4B 6D 9E 70 */	b __ct__16Z2SoundObjSimpleFv
lbl_80BE49D8:
/* 80BE49D8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BE49DC  60 00 00 08 */	ori r0, r0, 8
/* 80BE49E0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BE49E4:
/* 80BE49E4  7F E3 FB 78 */	mr r3, r31
/* 80BE49E8  4B FF F2 B1 */	bl create1st__14daObjFallObj_cFv
/* 80BE49EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE49F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE49F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE49F8  7C 08 03 A6 */	mtlr r0
/* 80BE49FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE4A00  4E 80 00 20 */	blr 
