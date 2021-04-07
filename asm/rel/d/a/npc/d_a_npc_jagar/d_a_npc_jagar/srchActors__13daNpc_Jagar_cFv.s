lbl_80A157B4:
/* 80A157B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A157B8  7C 08 02 A6 */	mflr r0
/* 80A157BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A157C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A157C4  7C 7F 1B 78 */	mr r31, r3
/* 80A157C8  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80A157CC  2C 00 00 01 */	cmpwi r0, 1
/* 80A157D0  41 82 00 6C */	beq lbl_80A1583C
/* 80A157D4  40 80 00 B8 */	bge lbl_80A1588C
/* 80A157D8  2C 00 00 00 */	cmpwi r0, 0
/* 80A157DC  40 80 00 0C */	bge lbl_80A157E8
/* 80A157E0  48 00 00 AC */	b lbl_80A1588C
/* 80A157E4  48 00 00 A8 */	b lbl_80A1588C
lbl_80A157E8:
/* 80A157E8  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80A157EC  4B 72 FF 1D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A157F0  28 03 00 00 */	cmplwi r3, 0
/* 80A157F4  40 82 00 1C */	bne lbl_80A15810
/* 80A157F8  7F E3 FB 78 */	mr r3, r31
/* 80A157FC  38 80 01 5A */	li r4, 0x15a
/* 80A15800  4B 73 66 2D */	bl getNearestActorP__8daNpcT_cFs
/* 80A15804  7C 64 1B 78 */	mr r4, r3
/* 80A15808  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80A1580C  4B 72 FE D5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A15810:
/* 80A15810  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80A15814  4B 72 FE F5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A15818  28 03 00 00 */	cmplwi r3, 0
/* 80A1581C  40 82 00 70 */	bne lbl_80A1588C
/* 80A15820  7F E3 FB 78 */	mr r3, r31
/* 80A15824  38 80 01 0D */	li r4, 0x10d
/* 80A15828  4B 73 66 05 */	bl getNearestActorP__8daNpcT_cFs
/* 80A1582C  7C 64 1B 78 */	mr r4, r3
/* 80A15830  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80A15834  4B 72 FE AD */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A15838  48 00 00 54 */	b lbl_80A1588C
lbl_80A1583C:
/* 80A1583C  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80A15840  4B 72 FE C9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A15844  28 03 00 00 */	cmplwi r3, 0
/* 80A15848  40 82 00 1C */	bne lbl_80A15864
/* 80A1584C  7F E3 FB 78 */	mr r3, r31
/* 80A15850  38 80 01 5A */	li r4, 0x15a
/* 80A15854  4B 73 65 D9 */	bl getNearestActorP__8daNpcT_cFs
/* 80A15858  7C 64 1B 78 */	mr r4, r3
/* 80A1585C  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80A15860  4B 72 FE 81 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A15864:
/* 80A15864  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80A15868  4B 72 FE A1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A1586C  28 03 00 00 */	cmplwi r3, 0
/* 80A15870  40 82 00 1C */	bne lbl_80A1588C
/* 80A15874  7F E3 FB 78 */	mr r3, r31
/* 80A15878  38 80 02 46 */	li r4, 0x246
/* 80A1587C  4B 73 65 B1 */	bl getNearestActorP__8daNpcT_cFs
/* 80A15880  7C 64 1B 78 */	mr r4, r3
/* 80A15884  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80A15888  4B 72 FE 59 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A1588C:
/* 80A1588C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A15890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A15894  7C 08 03 A6 */	mtlr r0
/* 80A15898  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1589C  4E 80 00 20 */	blr 
