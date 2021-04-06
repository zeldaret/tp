lbl_804BC7D4:
/* 804BC7D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BC7D8  7C 08 02 A6 */	mflr r0
/* 804BC7DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BC7E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BC7E4  93 C1 00 08 */	stw r30, 8(r1)
/* 804BC7E8  7C 9E 23 78 */	mr r30, r4
/* 804BC7EC  7C DF 33 78 */	mr r31, r6
/* 804BC7F0  38 00 00 00 */	li r0, 0
/* 804BC7F4  90 04 00 00 */	stw r0, 0(r4)
/* 804BC7F8  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 804BC7FC  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l /* 0x80406194@l */
/* 804BC800  7C A4 2B 78 */	mr r4, r5
/* 804BC804  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BC808  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BC80C  3C A5 00 02 */	addis r5, r5, 2
/* 804BC810  38 C0 00 80 */	li r6, 0x80
/* 804BC814  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804BC818  4B B7 FB 65 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 804BC81C  28 03 00 00 */	cmplwi r3, 0
/* 804BC820  41 82 00 2C */	beq lbl_804BC84C
/* 804BC824  3C 80 00 08 */	lis r4, 8
/* 804BC828  67 E5 11 00 */	oris r5, r31, 0x1100
/* 804BC82C  60 A5 00 84 */	ori r5, r5, 0x84
/* 804BC830  4B B5 84 25 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804BC834  90 7E 00 00 */	stw r3, 0(r30)
/* 804BC838  80 1E 00 00 */	lwz r0, 0(r30)
/* 804BC83C  28 00 00 00 */	cmplwi r0, 0
/* 804BC840  40 82 00 0C */	bne lbl_804BC84C
/* 804BC844  38 60 00 00 */	li r3, 0
/* 804BC848  48 00 00 08 */	b lbl_804BC850
lbl_804BC84C:
/* 804BC84C  38 60 00 01 */	li r3, 1
lbl_804BC850:
/* 804BC850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BC854  83 C1 00 08 */	lwz r30, 8(r1)
/* 804BC858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BC85C  7C 08 03 A6 */	mtlr r0
/* 804BC860  38 21 00 10 */	addi r1, r1, 0x10
/* 804BC864  4E 80 00 20 */	blr 
