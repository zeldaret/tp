lbl_8097AF14:
/* 8097AF14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097AF18  7C 08 02 A6 */	mflr r0
/* 8097AF1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097AF20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097AF24  93 C1 00 08 */	stw r30, 8(r1)
/* 8097AF28  7C 7E 1B 78 */	mr r30, r3
/* 8097AF2C  3B E0 FF FF */	li r31, -1
/* 8097AF30  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8097AF34  28 00 00 01 */	cmplwi r0, 1
/* 8097AF38  41 82 00 0C */	beq lbl_8097AF44
/* 8097AF3C  38 60 FF FF */	li r3, -1
/* 8097AF40  48 00 00 88 */	b lbl_8097AFC8
lbl_8097AF44:
/* 8097AF44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8097AF48  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8097AF4C  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 8097AF50  80 84 4F 94 */	lwz r4, 0x4f94(r4)
/* 8097AF54  4B 6C 83 99 */	bl convPId__14dEvt_control_cFUi
/* 8097AF58  7C 03 F0 40 */	cmplw r3, r30
/* 8097AF5C  40 82 00 60 */	bne lbl_8097AFBC
/* 8097AF60  4B 8B D2 3D */	bl getActor__12dMsgObject_cFv
/* 8097AF64  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8097AF68  28 00 00 02 */	cmplwi r0, 2
/* 8097AF6C  41 82 00 0C */	beq lbl_8097AF78
/* 8097AF70  28 00 00 03 */	cmplwi r0, 3
/* 8097AF74  40 82 00 10 */	bne lbl_8097AF84
lbl_8097AF78:
/* 8097AF78  38 00 FF FF */	li r0, -1
/* 8097AF7C  90 1E 0B 6C */	stw r0, 0xb6c(r30)
/* 8097AF80  48 00 00 44 */	b lbl_8097AFC4
lbl_8097AF84:
/* 8097AF84  28 00 00 06 */	cmplwi r0, 6
/* 8097AF88  40 82 00 28 */	bne lbl_8097AFB0
/* 8097AF8C  80 83 00 EC */	lwz r4, 0xec(r3)
/* 8097AF90  80 1E 0B 6C */	lwz r0, 0xb6c(r30)
/* 8097AF94  7C 04 00 40 */	cmplw r4, r0
/* 8097AF98  41 82 00 2C */	beq lbl_8097AFC4
/* 8097AF9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8097AFA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8097AFA4  8B E3 5E 7A */	lbz r31, 0x5e7a(r3)
/* 8097AFA8  90 9E 0B 6C */	stw r4, 0xb6c(r30)
/* 8097AFAC  48 00 00 18 */	b lbl_8097AFC4
lbl_8097AFB0:
/* 8097AFB0  38 00 FF FF */	li r0, -1
/* 8097AFB4  90 1E 0B 6C */	stw r0, 0xb6c(r30)
/* 8097AFB8  48 00 00 0C */	b lbl_8097AFC4
lbl_8097AFBC:
/* 8097AFBC  38 00 FF FF */	li r0, -1
/* 8097AFC0  90 1E 0B 6C */	stw r0, 0xb6c(r30)
lbl_8097AFC4:
/* 8097AFC4  7F E3 FB 78 */	mr r3, r31
lbl_8097AFC8:
/* 8097AFC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097AFCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8097AFD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097AFD4  7C 08 03 A6 */	mtlr r0
/* 8097AFD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8097AFDC  4E 80 00 20 */	blr 
