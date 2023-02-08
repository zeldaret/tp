lbl_80B4E6A0:
/* 80B4E6A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4E6A4  7C 08 02 A6 */	mflr r0
/* 80B4E6A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4E6AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4E6B0  7C 7F 1B 78 */	mr r31, r3
/* 80B4E6B4  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80B4E6B8  2C 00 00 04 */	cmpwi r0, 4
/* 80B4E6BC  41 82 00 7C */	beq lbl_80B4E738
/* 80B4E6C0  40 80 00 10 */	bge lbl_80B4E6D0
/* 80B4E6C4  2C 00 00 03 */	cmpwi r0, 3
/* 80B4E6C8  40 80 00 1C */	bge lbl_80B4E6E4
/* 80B4E6CC  48 00 00 E8 */	b lbl_80B4E7B4
lbl_80B4E6D0:
/* 80B4E6D0  2C 00 00 09 */	cmpwi r0, 9
/* 80B4E6D4  40 80 00 E0 */	bge lbl_80B4E7B4
/* 80B4E6D8  2C 00 00 06 */	cmpwi r0, 6
/* 80B4E6DC  40 80 00 D8 */	bge lbl_80B4E7B4
/* 80B4E6E0  48 00 00 AC */	b lbl_80B4E78C
lbl_80B4E6E4:
/* 80B4E6E4  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80B4E6E8  4B 5F 70 21 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B4E6EC  28 03 00 00 */	cmplwi r3, 0
/* 80B4E6F0  40 82 00 1C */	bne lbl_80B4E70C
/* 80B4E6F4  7F E3 FB 78 */	mr r3, r31
/* 80B4E6F8  38 80 02 36 */	li r4, 0x236
/* 80B4E6FC  4B 5F D7 31 */	bl getNearestActorP__8daNpcT_cFs
/* 80B4E700  7C 64 1B 78 */	mr r4, r3
/* 80B4E704  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80B4E708  4B 5F 6F D9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80B4E70C:
/* 80B4E70C  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B4E710  4B 5F 6F F9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B4E714  28 03 00 00 */	cmplwi r3, 0
/* 80B4E718  40 82 00 9C */	bne lbl_80B4E7B4
/* 80B4E71C  7F E3 FB 78 */	mr r3, r31
/* 80B4E720  38 80 02 3C */	li r4, 0x23c
/* 80B4E724  4B 5F D7 09 */	bl getNearestActorP__8daNpcT_cFs
/* 80B4E728  7C 64 1B 78 */	mr r4, r3
/* 80B4E72C  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B4E730  4B 5F 6F B1 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B4E734  48 00 00 80 */	b lbl_80B4E7B4
lbl_80B4E738:
/* 80B4E738  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B4E73C  4B 5F 6F CD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B4E740  28 03 00 00 */	cmplwi r3, 0
/* 80B4E744  40 82 00 1C */	bne lbl_80B4E760
/* 80B4E748  7F E3 FB 78 */	mr r3, r31
/* 80B4E74C  38 80 02 73 */	li r4, 0x273
/* 80B4E750  4B 5F D6 DD */	bl getNearestActorP__8daNpcT_cFs
/* 80B4E754  7C 64 1B 78 */	mr r4, r3
/* 80B4E758  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B4E75C  4B 5F 6F 85 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80B4E760:
/* 80B4E760  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80B4E764  4B 5F 6F A5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B4E768  28 03 00 00 */	cmplwi r3, 0
/* 80B4E76C  40 82 00 48 */	bne lbl_80B4E7B4
/* 80B4E770  7F E3 FB 78 */	mr r3, r31
/* 80B4E774  38 80 02 83 */	li r4, 0x283
/* 80B4E778  4B 5F D6 B5 */	bl getNearestActorP__8daNpcT_cFs
/* 80B4E77C  7C 64 1B 78 */	mr r4, r3
/* 80B4E780  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80B4E784  4B 5F 6F 5D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B4E788  48 00 00 2C */	b lbl_80B4E7B4
lbl_80B4E78C:
/* 80B4E78C  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80B4E790  4B 5F 6F 79 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B4E794  28 03 00 00 */	cmplwi r3, 0
/* 80B4E798  40 82 00 1C */	bne lbl_80B4E7B4
/* 80B4E79C  7F E3 FB 78 */	mr r3, r31
/* 80B4E7A0  38 80 02 5E */	li r4, 0x25e
/* 80B4E7A4  4B 5F D6 89 */	bl getNearestActorP__8daNpcT_cFs
/* 80B4E7A8  7C 64 1B 78 */	mr r4, r3
/* 80B4E7AC  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80B4E7B0  4B 5F 6F 31 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80B4E7B4:
/* 80B4E7B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4E7B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4E7BC  7C 08 03 A6 */	mtlr r0
/* 80B4E7C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4E7C4  4E 80 00 20 */	blr 
