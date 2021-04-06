lbl_80B27BF0:
/* 80B27BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B27BF4  7C 08 02 A6 */	mflr r0
/* 80B27BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B27BFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B27C00  7C 7F 1B 78 */	mr r31, r3
/* 80B27C04  88 03 0F 84 */	lbz r0, 0xf84(r3)
/* 80B27C08  2C 00 00 04 */	cmpwi r0, 4
/* 80B27C0C  41 82 00 44 */	beq lbl_80B27C50
/* 80B27C10  40 80 00 68 */	bge lbl_80B27C78
/* 80B27C14  2C 00 00 03 */	cmpwi r0, 3
/* 80B27C18  40 80 00 0C */	bge lbl_80B27C24
/* 80B27C1C  48 00 00 5C */	b lbl_80B27C78
/* 80B27C20  48 00 00 58 */	b lbl_80B27C78
lbl_80B27C24:
/* 80B27C24  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80B27C28  4B 61 DA E1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B27C2C  28 03 00 00 */	cmplwi r3, 0
/* 80B27C30  40 82 00 48 */	bne lbl_80B27C78
/* 80B27C34  7F E3 FB 78 */	mr r3, r31
/* 80B27C38  38 80 02 62 */	li r4, 0x262
/* 80B27C3C  4B 62 41 F1 */	bl getNearestActorP__8daNpcT_cFs
/* 80B27C40  7C 64 1B 78 */	mr r4, r3
/* 80B27C44  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80B27C48  4B 61 DA 99 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B27C4C  48 00 00 2C */	b lbl_80B27C78
lbl_80B27C50:
/* 80B27C50  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80B27C54  4B 61 DA B5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B27C58  28 03 00 00 */	cmplwi r3, 0
/* 80B27C5C  40 82 00 1C */	bne lbl_80B27C78
/* 80B27C60  7F E3 FB 78 */	mr r3, r31
/* 80B27C64  38 80 02 62 */	li r4, 0x262
/* 80B27C68  4B 62 41 C5 */	bl getNearestActorP__8daNpcT_cFs
/* 80B27C6C  7C 64 1B 78 */	mr r4, r3
/* 80B27C70  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80B27C74  4B 61 DA 6D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80B27C78:
/* 80B27C78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B27C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B27C80  7C 08 03 A6 */	mtlr r0
/* 80B27C84  38 21 00 10 */	addi r1, r1, 0x10
/* 80B27C88  4E 80 00 20 */	blr 
