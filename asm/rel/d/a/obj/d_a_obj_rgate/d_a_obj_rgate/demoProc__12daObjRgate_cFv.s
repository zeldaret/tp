lbl_80CBBC04:
/* 80CBBC04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CBBC08  7C 08 02 A6 */	mflr r0
/* 80CBBC0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBBC10  39 61 00 20 */	addi r11, r1, 0x20
/* 80CBBC14  4B 6A 65 C9 */	bl _savegpr_29
/* 80CBBC18  7C 7D 1B 78 */	mr r29, r3
/* 80CBBC1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBBC20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBBC24  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80CBBC28  7F C3 F3 78 */	mr r3, r30
/* 80CBBC2C  3C 80 80 CC */	lis r4, d_a_obj_rgate__stringBase0@ha /* 0x80CBC458@ha */
/* 80CBBC30  38 84 C4 58 */	addi r4, r4, d_a_obj_rgate__stringBase0@l /* 0x80CBC458@l */
/* 80CBBC34  38 84 00 1C */	addi r4, r4, 0x1c
/* 80CBBC38  38 A0 00 00 */	li r5, 0
/* 80CBBC3C  38 C0 00 00 */	li r6, 0
/* 80CBBC40  4B 38 BE DD */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80CBBC44  90 7D 0B A4 */	stw r3, 0xba4(r29)
/* 80CBBC48  7F A3 EB 78 */	mr r3, r29
/* 80CBBC4C  48 00 01 1D */	bl getDemoAction__12daObjRgate_cFv
/* 80CBBC50  7C 7F 1B 78 */	mr r31, r3
/* 80CBBC54  7F C3 F3 78 */	mr r3, r30
/* 80CBBC58  80 9D 0B A4 */	lwz r4, 0xba4(r29)
/* 80CBBC5C  4B 38 C0 F1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80CBBC60  2C 03 00 00 */	cmpwi r3, 0
/* 80CBBC64  41 82 00 68 */	beq lbl_80CBBCCC
/* 80CBBC68  2C 1F 00 03 */	cmpwi r31, 3
/* 80CBBC6C  41 82 00 50 */	beq lbl_80CBBCBC
/* 80CBBC70  40 80 00 5C */	bge lbl_80CBBCCC
/* 80CBBC74  2C 1F 00 00 */	cmpwi r31, 0
/* 80CBBC78  41 82 00 08 */	beq lbl_80CBBC80
/* 80CBBC7C  48 00 00 50 */	b lbl_80CBBCCC
lbl_80CBBC80:
/* 80CBBC80  7F C3 F3 78 */	mr r3, r30
/* 80CBBC84  80 9D 0B A4 */	lwz r4, 0xba4(r29)
/* 80CBBC88  3C A0 80 CC */	lis r5, d_a_obj_rgate__stringBase0@ha /* 0x80CBC458@ha */
/* 80CBBC8C  38 A5 C4 58 */	addi r5, r5, d_a_obj_rgate__stringBase0@l /* 0x80CBC458@l */
/* 80CBBC90  38 A5 00 23 */	addi r5, r5, 0x23
/* 80CBBC94  38 C0 00 03 */	li r6, 3
/* 80CBBC98  4B 38 C4 55 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CBBC9C  28 03 00 00 */	cmplwi r3, 0
/* 80CBBCA0  40 82 00 10 */	bne lbl_80CBBCB0
/* 80CBBCA4  38 00 00 01 */	li r0, 1
/* 80CBBCA8  98 1D 0B A8 */	stb r0, 0xba8(r29)
/* 80CBBCAC  48 00 00 20 */	b lbl_80CBBCCC
lbl_80CBBCB0:
/* 80CBBCB0  80 03 00 00 */	lwz r0, 0(r3)
/* 80CBBCB4  98 1D 0B A8 */	stb r0, 0xba8(r29)
/* 80CBBCB8  48 00 00 14 */	b lbl_80CBBCCC
lbl_80CBBCBC:
/* 80CBBCBC  38 00 03 E8 */	li r0, 0x3e8
/* 80CBBCC0  B0 1D 0B 9C */	sth r0, 0xb9c(r29)
/* 80CBBCC4  38 00 FC 18 */	li r0, -1000
/* 80CBBCC8  B0 1D 0B 9E */	sth r0, 0xb9e(r29)
lbl_80CBBCCC:
/* 80CBBCCC  2C 1F 00 02 */	cmpwi r31, 2
/* 80CBBCD0  41 82 00 54 */	beq lbl_80CBBD24
/* 80CBBCD4  40 80 00 14 */	bge lbl_80CBBCE8
/* 80CBBCD8  2C 1F 00 00 */	cmpwi r31, 0
/* 80CBBCDC  41 82 00 18 */	beq lbl_80CBBCF4
/* 80CBBCE0  40 80 00 54 */	bge lbl_80CBBD34
/* 80CBBCE4  48 00 00 60 */	b lbl_80CBBD44
lbl_80CBBCE8:
/* 80CBBCE8  2C 1F 00 04 */	cmpwi r31, 4
/* 80CBBCEC  40 80 00 58 */	bge lbl_80CBBD44
/* 80CBBCF0  48 00 00 24 */	b lbl_80CBBD14
lbl_80CBBCF4:
/* 80CBBCF4  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80CBBCF8  48 00 06 4D */	bl func_80CBC344
/* 80CBBCFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CBBD00  40 82 00 50 */	bne lbl_80CBBD50
/* 80CBBD04  7F C3 F3 78 */	mr r3, r30
/* 80CBBD08  80 9D 0B A4 */	lwz r4, 0xba4(r29)
/* 80CBBD0C  4B 38 C4 71 */	bl cutEnd__16dEvent_manager_cFi
/* 80CBBD10  48 00 00 40 */	b lbl_80CBBD50
lbl_80CBBD14:
/* 80CBBD14  7F C3 F3 78 */	mr r3, r30
/* 80CBBD18  80 9D 0B A4 */	lwz r4, 0xba4(r29)
/* 80CBBD1C  4B 38 C4 61 */	bl cutEnd__16dEvent_manager_cFi
/* 80CBBD20  48 00 00 30 */	b lbl_80CBBD50
lbl_80CBBD24:
/* 80CBBD24  7F C3 F3 78 */	mr r3, r30
/* 80CBBD28  80 9D 0B A4 */	lwz r4, 0xba4(r29)
/* 80CBBD2C  4B 38 C4 51 */	bl cutEnd__16dEvent_manager_cFi
/* 80CBBD30  48 00 00 20 */	b lbl_80CBBD50
lbl_80CBBD34:
/* 80CBBD34  7F C3 F3 78 */	mr r3, r30
/* 80CBBD38  80 9D 0B A4 */	lwz r4, 0xba4(r29)
/* 80CBBD3C  4B 38 C4 41 */	bl cutEnd__16dEvent_manager_cFi
/* 80CBBD40  48 00 00 10 */	b lbl_80CBBD50
lbl_80CBBD44:
/* 80CBBD44  7F C3 F3 78 */	mr r3, r30
/* 80CBBD48  80 9D 0B A4 */	lwz r4, 0xba4(r29)
/* 80CBBD4C  4B 38 C4 31 */	bl cutEnd__16dEvent_manager_cFi
lbl_80CBBD50:
/* 80CBBD50  39 61 00 20 */	addi r11, r1, 0x20
/* 80CBBD54  4B 6A 64 D5 */	bl _restgpr_29
/* 80CBBD58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CBBD5C  7C 08 03 A6 */	mtlr r0
/* 80CBBD60  38 21 00 20 */	addi r1, r1, 0x20
/* 80CBBD64  4E 80 00 20 */	blr 
