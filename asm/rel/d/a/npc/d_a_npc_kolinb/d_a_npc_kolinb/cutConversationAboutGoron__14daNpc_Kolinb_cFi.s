lbl_80A46EE4:
/* 80A46EE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A46EE8  7C 08 02 A6 */	mflr r0
/* 80A46EEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A46EF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A46EF4  4B 91 B2 E1 */	bl _savegpr_27
/* 80A46EF8  7C 7D 1B 78 */	mr r29, r3
/* 80A46EFC  7C 9B 23 78 */	mr r27, r4
/* 80A46F00  3B E0 00 00 */	li r31, 0
/* 80A46F04  3B C0 FF FF */	li r30, -1
/* 80A46F08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A46F0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A46F10  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80A46F14  7F 83 E3 78 */	mr r3, r28
/* 80A46F18  3C A0 80 A5 */	lis r5, d_a_npc_kolinb__stringBase0@ha /* 0x80A487DC@ha */
/* 80A46F1C  38 A5 87 DC */	addi r5, r5, d_a_npc_kolinb__stringBase0@l /* 0x80A487DC@l */
/* 80A46F20  38 A5 00 71 */	addi r5, r5, 0x71
/* 80A46F24  38 C0 00 03 */	li r6, 3
/* 80A46F28  4B 60 11 C5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A46F2C  28 03 00 00 */	cmplwi r3, 0
/* 80A46F30  41 82 00 08 */	beq lbl_80A46F38
/* 80A46F34  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80A46F38:
/* 80A46F38  7F 83 E3 78 */	mr r3, r28
/* 80A46F3C  7F 64 DB 78 */	mr r4, r27
/* 80A46F40  4B 60 0E 0D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A46F44  2C 03 00 00 */	cmpwi r3, 0
/* 80A46F48  41 82 00 F8 */	beq lbl_80A47040
/* 80A46F4C  2C 1E 00 01 */	cmpwi r30, 1
/* 80A46F50  41 82 00 20 */	beq lbl_80A46F70
/* 80A46F54  40 80 00 EC */	bge lbl_80A47040
/* 80A46F58  2C 1E 00 00 */	cmpwi r30, 0
/* 80A46F5C  40 80 00 08 */	bge lbl_80A46F64
/* 80A46F60  48 00 00 E0 */	b lbl_80A47040
lbl_80A46F64:
/* 80A46F64  38 00 00 3D */	li r0, 0x3d
/* 80A46F68  90 1D 0D C4 */	stw r0, 0xdc4(r29)
/* 80A46F6C  48 00 00 D4 */	b lbl_80A47040
lbl_80A46F70:
/* 80A46F70  88 1D 0F B4 */	lbz r0, 0xfb4(r29)
/* 80A46F74  28 00 00 02 */	cmplwi r0, 2
/* 80A46F78  40 82 00 68 */	bne lbl_80A46FE0
/* 80A46F7C  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A46F80  2C 00 00 05 */	cmpwi r0, 5
/* 80A46F84  41 82 00 28 */	beq lbl_80A46FAC
/* 80A46F88  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A46F8C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A46F90  4B 6F E9 09 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A46F94  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A46F98  38 00 00 05 */	li r0, 5
/* 80A46F9C  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A46FA0  3C 60 80 A5 */	lis r3, lit_4542@ha /* 0x80A487D0@ha */
/* 80A46FA4  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)  /* 0x80A487D0@l */
/* 80A46FA8  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A46FAC:
/* 80A46FAC  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A46FB0  2C 00 00 05 */	cmpwi r0, 5
/* 80A46FB4  41 82 00 8C */	beq lbl_80A47040
/* 80A46FB8  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A46FBC  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A46FC0  4B 6F E8 D9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A46FC4  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A46FC8  38 00 00 05 */	li r0, 5
/* 80A46FCC  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A46FD0  3C 60 80 A5 */	lis r3, lit_4542@ha /* 0x80A487D0@ha */
/* 80A46FD4  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)  /* 0x80A487D0@l */
/* 80A46FD8  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80A46FDC  48 00 00 64 */	b lbl_80A47040
lbl_80A46FE0:
/* 80A46FE0  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A46FE4  2C 00 00 00 */	cmpwi r0, 0
/* 80A46FE8  41 82 00 28 */	beq lbl_80A47010
/* 80A46FEC  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A46FF0  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A46FF4  4B 6F E8 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A46FF8  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A46FFC  38 00 00 00 */	li r0, 0
/* 80A47000  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A47004  3C 60 80 A5 */	lis r3, lit_4542@ha /* 0x80A487D0@ha */
/* 80A47008  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)  /* 0x80A487D0@l */
/* 80A4700C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A47010:
/* 80A47010  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A47014  2C 00 00 00 */	cmpwi r0, 0
/* 80A47018  41 82 00 28 */	beq lbl_80A47040
/* 80A4701C  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A47020  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A47024  4B 6F E8 75 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A47028  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A4702C  38 00 00 00 */	li r0, 0
/* 80A47030  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A47034  3C 60 80 A5 */	lis r3, lit_4542@ha /* 0x80A487D0@ha */
/* 80A47038  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)  /* 0x80A487D0@l */
/* 80A4703C  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80A47040:
/* 80A47040  2C 1E 00 01 */	cmpwi r30, 1
/* 80A47044  41 82 01 1C */	beq lbl_80A47160
/* 80A47048  40 80 01 1C */	bge lbl_80A47164
/* 80A4704C  2C 1E 00 00 */	cmpwi r30, 0
/* 80A47050  40 80 00 08 */	bge lbl_80A47058
/* 80A47054  48 00 01 10 */	b lbl_80A47164
lbl_80A47058:
/* 80A47058  7F A3 EB 78 */	mr r3, r29
/* 80A4705C  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80A47060  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80A47064  7D 89 03 A6 */	mtctr r12
/* 80A47068  4E 80 04 21 */	bctrl 
/* 80A4706C  80 1D 0D C4 */	lwz r0, 0xdc4(r29)
/* 80A47070  2C 00 00 00 */	cmpwi r0, 0
/* 80A47074  41 82 00 E4 */	beq lbl_80A47158
/* 80A47078  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 80A4707C  48 00 13 B9 */	bl func_80A48434
/* 80A47080  2C 03 00 00 */	cmpwi r3, 0
/* 80A47084  40 82 00 D4 */	bne lbl_80A47158
/* 80A47088  88 1D 0F B4 */	lbz r0, 0xfb4(r29)
/* 80A4708C  28 00 00 02 */	cmplwi r0, 2
/* 80A47090  40 82 00 68 */	bne lbl_80A470F8
/* 80A47094  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A47098  2C 00 00 07 */	cmpwi r0, 7
/* 80A4709C  41 82 00 28 */	beq lbl_80A470C4
/* 80A470A0  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A470A4  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A470A8  4B 6F E7 F1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A470AC  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A470B0  38 00 00 07 */	li r0, 7
/* 80A470B4  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A470B8  3C 60 80 A5 */	lis r3, lit_4542@ha /* 0x80A487D0@ha */
/* 80A470BC  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)  /* 0x80A487D0@l */
/* 80A470C0  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A470C4:
/* 80A470C4  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A470C8  2C 00 00 07 */	cmpwi r0, 7
/* 80A470CC  41 82 00 8C */	beq lbl_80A47158
/* 80A470D0  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A470D4  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A470D8  4B 6F E7 C1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A470DC  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A470E0  38 00 00 07 */	li r0, 7
/* 80A470E4  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A470E8  3C 60 80 A5 */	lis r3, lit_4542@ha /* 0x80A487D0@ha */
/* 80A470EC  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)  /* 0x80A487D0@l */
/* 80A470F0  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80A470F4  48 00 00 64 */	b lbl_80A47158
lbl_80A470F8:
/* 80A470F8  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A470FC  2C 00 00 04 */	cmpwi r0, 4
/* 80A47100  41 82 00 28 */	beq lbl_80A47128
/* 80A47104  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A47108  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A4710C  4B 6F E7 8D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A47110  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A47114  38 00 00 04 */	li r0, 4
/* 80A47118  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A4711C  3C 60 80 A5 */	lis r3, lit_4542@ha /* 0x80A487D0@ha */
/* 80A47120  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)  /* 0x80A487D0@l */
/* 80A47124  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A47128:
/* 80A47128  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A4712C  2C 00 00 04 */	cmpwi r0, 4
/* 80A47130  41 82 00 28 */	beq lbl_80A47158
/* 80A47134  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A47138  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A4713C  4B 6F E7 5D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A47140  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A47144  38 00 00 04 */	li r0, 4
/* 80A47148  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A4714C  3C 60 80 A5 */	lis r3, lit_4542@ha /* 0x80A487D0@ha */
/* 80A47150  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)  /* 0x80A487D0@l */
/* 80A47154  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80A47158:
/* 80A47158  3B E0 00 01 */	li r31, 1
/* 80A4715C  48 00 00 08 */	b lbl_80A47164
lbl_80A47160:
/* 80A47160  3B E0 00 01 */	li r31, 1
lbl_80A47164:
/* 80A47164  7F E3 FB 78 */	mr r3, r31
/* 80A47168  39 61 00 20 */	addi r11, r1, 0x20
/* 80A4716C  4B 91 B0 B5 */	bl _restgpr_27
/* 80A47170  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A47174  7C 08 03 A6 */	mtlr r0
/* 80A47178  38 21 00 20 */	addi r1, r1, 0x20
/* 80A4717C  4E 80 00 20 */	blr 
