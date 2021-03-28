lbl_80A47180:
/* 80A47180  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A47184  7C 08 02 A6 */	mflr r0
/* 80A47188  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A4718C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A47190  4B 91 B0 44 */	b _savegpr_27
/* 80A47194  7C 7D 1B 78 */	mr r29, r3
/* 80A47198  7C 9B 23 78 */	mr r27, r4
/* 80A4719C  3B E0 00 00 */	li r31, 0
/* 80A471A0  3B C0 FF FF */	li r30, -1
/* 80A471A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A471A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A471AC  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80A471B0  7F 83 E3 78 */	mr r3, r28
/* 80A471B4  3C A0 80 A5 */	lis r5, struct_80A487DC+0x0@ha
/* 80A471B8  38 A5 87 DC */	addi r5, r5, struct_80A487DC+0x0@l
/* 80A471BC  38 A5 00 71 */	addi r5, r5, 0x71
/* 80A471C0  38 C0 00 03 */	li r6, 3
/* 80A471C4  4B 60 0F 28 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A471C8  28 03 00 00 */	cmplwi r3, 0
/* 80A471CC  41 82 00 08 */	beq lbl_80A471D4
/* 80A471D0  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80A471D4:
/* 80A471D4  7F 83 E3 78 */	mr r3, r28
/* 80A471D8  7F 64 DB 78 */	mr r4, r27
/* 80A471DC  4B 60 0B 70 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A471E0  2C 03 00 00 */	cmpwi r3, 0
/* 80A471E4  41 82 00 CC */	beq lbl_80A472B0
/* 80A471E8  2C 1E 00 01 */	cmpwi r30, 1
/* 80A471EC  41 82 00 18 */	beq lbl_80A47204
/* 80A471F0  40 80 00 08 */	bge lbl_80A471F8
/* 80A471F4  48 00 00 BC */	b lbl_80A472B0
lbl_80A471F8:
/* 80A471F8  2C 1E 00 03 */	cmpwi r30, 3
/* 80A471FC  40 80 00 B4 */	bge lbl_80A472B0
/* 80A47200  48 00 00 68 */	b lbl_80A47268
lbl_80A47204:
/* 80A47204  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80A47208  2C 00 00 02 */	cmpwi r0, 2
/* 80A4720C  41 82 00 28 */	beq lbl_80A47234
/* 80A47210  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A47214  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A47218  4B 6F E6 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A4721C  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A47220  38 00 00 02 */	li r0, 2
/* 80A47224  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A47228  3C 60 80 A5 */	lis r3, lit_4542@ha
/* 80A4722C  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)
/* 80A47230  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A47234:
/* 80A47234  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80A47238  2C 00 00 02 */	cmpwi r0, 2
/* 80A4723C  41 82 00 74 */	beq lbl_80A472B0
/* 80A47240  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A47244  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A47248  4B 6F E6 50 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A4724C  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A47250  38 00 00 02 */	li r0, 2
/* 80A47254  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A47258  3C 60 80 A5 */	lis r3, lit_4542@ha
/* 80A4725C  C0 03 87 D0 */	lfs f0, lit_4542@l(r3)
/* 80A47260  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80A47264  48 00 00 4C */	b lbl_80A472B0
lbl_80A47268:
/* 80A47268  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80A4726C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A47270  4B 6F E6 28 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A47274  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80A47278  38 00 00 01 */	li r0, 1
/* 80A4727C  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80A47280  3C 60 80 A5 */	lis r3, lit_4212@ha
/* 80A47284  C0 03 87 BC */	lfs f0, lit_4212@l(r3)
/* 80A47288  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
/* 80A4728C  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80A47290  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80A47294  4B 6F E6 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A47298  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80A4729C  38 00 00 01 */	li r0, 1
/* 80A472A0  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80A472A4  3C 60 80 A5 */	lis r3, lit_4212@ha
/* 80A472A8  C0 03 87 BC */	lfs f0, lit_4212@l(r3)
/* 80A472AC  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80A472B0:
/* 80A472B0  2C 1E 00 03 */	cmpwi r30, 3
/* 80A472B4  40 80 00 1C */	bge lbl_80A472D0
/* 80A472B8  2C 1E 00 00 */	cmpwi r30, 0
/* 80A472BC  40 80 00 08 */	bge lbl_80A472C4
/* 80A472C0  48 00 00 10 */	b lbl_80A472D0
lbl_80A472C4:
/* 80A472C4  38 00 00 00 */	li r0, 0
/* 80A472C8  98 1D 0E 26 */	stb r0, 0xe26(r29)
/* 80A472CC  3B E0 00 01 */	li r31, 1
lbl_80A472D0:
/* 80A472D0  7F E3 FB 78 */	mr r3, r31
/* 80A472D4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A472D8  4B 91 AF 48 */	b _restgpr_27
/* 80A472DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A472E0  7C 08 03 A6 */	mtlr r0
/* 80A472E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A472E8  4E 80 00 20 */	blr 
