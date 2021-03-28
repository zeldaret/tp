lbl_8096E18C:
/* 8096E18C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096E190  7C 08 02 A6 */	mflr r0
/* 8096E194  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096E198  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096E19C  7C 7F 1B 78 */	mr r31, r3
/* 8096E1A0  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 8096E1A4  2C 00 00 01 */	cmpwi r0, 1
/* 8096E1A8  41 82 00 48 */	beq lbl_8096E1F0
/* 8096E1AC  40 80 00 10 */	bge lbl_8096E1BC
/* 8096E1B0  2C 00 00 00 */	cmpwi r0, 0
/* 8096E1B4  40 80 00 14 */	bge lbl_8096E1C8
/* 8096E1B8  48 00 00 B0 */	b lbl_8096E268
lbl_8096E1BC:
/* 8096E1BC  2C 00 00 04 */	cmpwi r0, 4
/* 8096E1C0  41 82 00 84 */	beq lbl_8096E244
/* 8096E1C4  48 00 00 A4 */	b lbl_8096E268
lbl_8096E1C8:
/* 8096E1C8  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 8096E1CC  4B 7D 75 3C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096E1D0  28 03 00 00 */	cmplwi r3, 0
/* 8096E1D4  40 82 00 94 */	bne lbl_8096E268
/* 8096E1D8  7F E3 FB 78 */	mr r3, r31
/* 8096E1DC  4B FF F7 D9 */	bl getCowP__11daNpc_Bou_cFv
/* 8096E1E0  7C 64 1B 78 */	mr r4, r3
/* 8096E1E4  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 8096E1E8  4B 7D 74 F8 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8096E1EC  48 00 00 7C */	b lbl_8096E268
lbl_8096E1F0:
/* 8096E1F0  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 8096E1F4  4B 7D 75 14 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096E1F8  28 03 00 00 */	cmplwi r3, 0
/* 8096E1FC  40 82 00 1C */	bne lbl_8096E218
/* 8096E200  7F E3 FB 78 */	mr r3, r31
/* 8096E204  38 80 01 5A */	li r4, 0x15a
/* 8096E208  4B 7D DC 24 */	b getNearestActorP__8daNpcT_cFs
/* 8096E20C  7C 64 1B 78 */	mr r4, r3
/* 8096E210  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 8096E214  4B 7D 74 CC */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8096E218:
/* 8096E218  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 8096E21C  4B 7D 74 EC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096E220  28 03 00 00 */	cmplwi r3, 0
/* 8096E224  40 82 00 44 */	bne lbl_8096E268
/* 8096E228  7F E3 FB 78 */	mr r3, r31
/* 8096E22C  38 80 02 58 */	li r4, 0x258
/* 8096E230  4B 7D DB FC */	b getNearestActorP__8daNpcT_cFs
/* 8096E234  7C 64 1B 78 */	mr r4, r3
/* 8096E238  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 8096E23C  4B 7D 74 A4 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8096E240  48 00 00 28 */	b lbl_8096E268
lbl_8096E244:
/* 8096E244  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 8096E248  4B 7D 74 C0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096E24C  28 03 00 00 */	cmplwi r3, 0
/* 8096E250  40 82 00 18 */	bne lbl_8096E268
/* 8096E254  7F E3 FB 78 */	mr r3, r31
/* 8096E258  4B FF F7 5D */	bl getCowP__11daNpc_Bou_cFv
/* 8096E25C  7C 64 1B 78 */	mr r4, r3
/* 8096E260  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 8096E264  4B 7D 74 7C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8096E268:
/* 8096E268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096E26C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096E270  7C 08 03 A6 */	mtlr r0
/* 8096E274  38 21 00 10 */	addi r1, r1, 0x10
/* 8096E278  4E 80 00 20 */	blr 
