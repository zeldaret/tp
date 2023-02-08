lbl_809FA45C:
/* 809FA45C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FA460  7C 08 02 A6 */	mflr r0
/* 809FA464  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FA468  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FA46C  7C 7F 1B 78 */	mr r31, r3
/* 809FA470  88 03 10 C4 */	lbz r0, 0x10c4(r3)
/* 809FA474  2C 00 00 02 */	cmpwi r0, 2
/* 809FA478  41 82 00 D0 */	beq lbl_809FA548
/* 809FA47C  40 80 00 14 */	bge lbl_809FA490
/* 809FA480  2C 00 00 00 */	cmpwi r0, 0
/* 809FA484  41 82 00 18 */	beq lbl_809FA49C
/* 809FA488  40 80 00 40 */	bge lbl_809FA4C8
/* 809FA48C  48 00 00 BC */	b lbl_809FA548
lbl_809FA490:
/* 809FA490  2C 00 00 04 */	cmpwi r0, 4
/* 809FA494  40 80 00 B4 */	bge lbl_809FA548
/* 809FA498  48 00 00 88 */	b lbl_809FA520
lbl_809FA49C:
/* 809FA49C  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 809FA4A0  4B 74 B2 69 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 809FA4A4  28 03 00 00 */	cmplwi r3, 0
/* 809FA4A8  40 82 00 A0 */	bne lbl_809FA548
/* 809FA4AC  7F E3 FB 78 */	mr r3, r31
/* 809FA4B0  38 80 01 E8 */	li r4, 0x1e8
/* 809FA4B4  4B 75 19 79 */	bl getNearestActorP__8daNpcT_cFs
/* 809FA4B8  7C 64 1B 78 */	mr r4, r3
/* 809FA4BC  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 809FA4C0  4B 74 B2 21 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 809FA4C4  48 00 00 84 */	b lbl_809FA548
lbl_809FA4C8:
/* 809FA4C8  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 809FA4CC  4B 74 B2 3D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 809FA4D0  28 03 00 00 */	cmplwi r3, 0
/* 809FA4D4  40 82 00 1C */	bne lbl_809FA4F0
/* 809FA4D8  7F E3 FB 78 */	mr r3, r31
/* 809FA4DC  38 80 01 00 */	li r4, 0x100
/* 809FA4E0  4B 75 19 4D */	bl getNearestActorP__8daNpcT_cFs
/* 809FA4E4  7C 64 1B 78 */	mr r4, r3
/* 809FA4E8  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 809FA4EC  4B 74 B1 F5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_809FA4F0:
/* 809FA4F0  38 7F 10 E0 */	addi r3, r31, 0x10e0
/* 809FA4F4  4B 74 B2 15 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 809FA4F8  28 03 00 00 */	cmplwi r3, 0
/* 809FA4FC  40 82 00 4C */	bne lbl_809FA548
/* 809FA500  7F E3 FB 78 */	mr r3, r31
/* 809FA504  38 80 00 16 */	li r4, 0x16
/* 809FA508  38 A0 00 00 */	li r5, 0
/* 809FA50C  4B 75 19 D9 */	bl getEvtAreaTagP__8daNpcT_cFii
/* 809FA510  7C 64 1B 78 */	mr r4, r3
/* 809FA514  38 7F 10 E0 */	addi r3, r31, 0x10e0
/* 809FA518  4B 74 B1 C9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 809FA51C  48 00 00 2C */	b lbl_809FA548
lbl_809FA520:
/* 809FA520  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 809FA524  4B 74 B1 E5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 809FA528  28 03 00 00 */	cmplwi r3, 0
/* 809FA52C  40 82 00 1C */	bne lbl_809FA548
/* 809FA530  7F E3 FB 78 */	mr r3, r31
/* 809FA534  38 80 02 45 */	li r4, 0x245
/* 809FA538  4B 75 18 F5 */	bl getNearestActorP__8daNpcT_cFs
/* 809FA53C  7C 64 1B 78 */	mr r4, r3
/* 809FA540  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 809FA544  4B 74 B1 9D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_809FA548:
/* 809FA548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FA54C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FA550  7C 08 03 A6 */	mtlr r0
/* 809FA554  38 21 00 10 */	addi r1, r1, 0x10
/* 809FA558  4E 80 00 20 */	blr 
