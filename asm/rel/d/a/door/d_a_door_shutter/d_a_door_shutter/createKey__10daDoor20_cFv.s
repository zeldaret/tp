lbl_80464858:
/* 80464858  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8046485C  7C 08 02 A6 */	mflr r0
/* 80464860  90 01 00 44 */	stw r0, 0x44(r1)
/* 80464864  39 61 00 40 */	addi r11, r1, 0x40
/* 80464868  4B EF D9 75 */	bl _savegpr_29
/* 8046486C  7C 7F 1B 78 */	mr r31, r3
/* 80464870  3C 80 80 46 */	lis r4, lit_4018@ha /* 0x80466820@ha */
/* 80464874  3B C4 68 20 */	addi r30, r4, lit_4018@l /* 0x80466820@l */
/* 80464878  48 00 18 25 */	bl chkMakeKey__10daDoor20_cFv
/* 8046487C  2C 03 00 01 */	cmpwi r3, 1
/* 80464880  40 82 02 48 */	bne lbl_80464AC8
/* 80464884  88 1F 05 F0 */	lbz r0, 0x5f0(r31)
/* 80464888  28 00 00 00 */	cmplwi r0, 0
/* 8046488C  41 82 02 3C */	beq lbl_80464AC8
/* 80464890  80 7F 05 EC */	lwz r3, 0x5ec(r31)
/* 80464894  3C 03 00 01 */	addis r0, r3, 1
/* 80464898  28 00 FF FF */	cmplwi r0, 0xffff
/* 8046489C  40 82 02 2C */	bne lbl_80464AC8
/* 804648A0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804648A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804648A8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804648AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804648B0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804648B4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804648B8  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 804648BC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804648C0  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 804648C4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804648C8  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 804648CC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 804648D0  38 61 00 10 */	addi r3, r1, 0x10
/* 804648D4  38 80 00 00 */	li r4, 0
/* 804648D8  38 A0 00 00 */	li r5, 0
/* 804648DC  38 C0 00 00 */	li r6, 0
/* 804648E0  4B E0 2B 15 */	bl __ct__5csXyzFsss
/* 804648E4  88 1F 06 73 */	lbz r0, 0x673(r31)
/* 804648E8  2C 00 00 01 */	cmpwi r0, 1
/* 804648EC  41 82 00 14 */	beq lbl_80464900
/* 804648F0  40 80 00 D8 */	bge lbl_804649C8
/* 804648F4  2C 00 00 00 */	cmpwi r0, 0
/* 804648F8  40 80 00 E4 */	bge lbl_804649DC
/* 804648FC  48 00 00 CC */	b lbl_804649C8
lbl_80464900:
/* 80464900  7F E3 FB 78 */	mr r3, r31
/* 80464904  4B BD 58 9D */	bl getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 80464908  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8046490C  28 00 00 02 */	cmplwi r0, 2
/* 80464910  40 82 00 34 */	bne lbl_80464944
/* 80464914  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80464918  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8046491C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80464920  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80464924  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80464928  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8046492C  38 00 00 00 */	li r0, 0
/* 80464930  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80464934  7F E3 FB 78 */	mr r3, r31
/* 80464938  4B BD 58 81 */	bl getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 8046493C  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 80464940  48 00 00 44 */	b lbl_80464984
lbl_80464944:
/* 80464944  7F E3 FB 78 */	mr r3, r31
/* 80464948  4B BD 58 65 */	bl getBackOption__13door_param2_cFP10fopAc_ac_c
/* 8046494C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80464950  28 00 00 02 */	cmplwi r0, 2
/* 80464954  40 82 00 30 */	bne lbl_80464984
/* 80464958  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8046495C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80464960  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80464964  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80464968  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 8046496C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80464970  38 00 7F FF */	li r0, 0x7fff
/* 80464974  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80464978  7F E3 FB 78 */	mr r3, r31
/* 8046497C  4B BD 58 49 */	bl getBRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80464980  54 7D 06 3E */	clrlwi r29, r3, 0x18
lbl_80464984:
/* 80464984  38 00 00 00 */	li r0, 0
/* 80464988  90 01 00 08 */	stw r0, 8(r1)
/* 8046498C  38 60 01 15 */	li r3, 0x115
/* 80464990  28 1F 00 00 */	cmplwi r31, 0
/* 80464994  41 82 00 0C */	beq lbl_804649A0
/* 80464998  80 9F 00 04 */	lwz r4, 4(r31)
/* 8046499C  48 00 00 08 */	b lbl_804649A4
lbl_804649A0:
/* 804649A0  38 80 FF FF */	li r4, -1
lbl_804649A4:
/* 804649A4  38 A0 FF FF */	li r5, -1
/* 804649A8  38 C1 00 18 */	addi r6, r1, 0x18
/* 804649AC  7F A7 EB 78 */	mr r7, r29
/* 804649B0  39 01 00 10 */	addi r8, r1, 0x10
/* 804649B4  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 804649B8  39 40 FF FF */	li r10, -1
/* 804649BC  4B BB 55 BD */	bl fopAcM_createChildFromOffset__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 804649C0  90 7F 05 EC */	stw r3, 0x5ec(r31)
/* 804649C4  48 00 00 D4 */	b lbl_80464A98
lbl_804649C8:
/* 804649C8  3C 60 80 46 */	lis r3, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 804649CC  38 63 68 D8 */	addi r3, r3, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 804649D0  38 63 01 AA */	addi r3, r3, 0x1aa
/* 804649D4  4C C6 31 82 */	crclr 6
/* 804649D8  4B BA 22 35 */	bl OSReport_Error
lbl_804649DC:
/* 804649DC  7F E3 FB 78 */	mr r3, r31
/* 804649E0  4B BD 57 C1 */	bl getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 804649E4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804649E8  28 00 00 02 */	cmplwi r0, 2
/* 804649EC  40 82 00 30 */	bne lbl_80464A1C
/* 804649F0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804649F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804649F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804649FC  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80464A00  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80464A04  38 00 00 00 */	li r0, 0
/* 80464A08  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80464A0C  7F E3 FB 78 */	mr r3, r31
/* 80464A10  4B BD 57 A9 */	bl getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80464A14  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 80464A18  48 00 00 40 */	b lbl_80464A58
lbl_80464A1C:
/* 80464A1C  7F E3 FB 78 */	mr r3, r31
/* 80464A20  4B BD 57 8D */	bl getBackOption__13door_param2_cFP10fopAc_ac_c
/* 80464A24  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80464A28  28 00 00 02 */	cmplwi r0, 2
/* 80464A2C  40 82 00 2C */	bne lbl_80464A58
/* 80464A30  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80464A34  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80464A38  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80464A3C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80464A40  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80464A44  38 00 7F FF */	li r0, 0x7fff
/* 80464A48  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80464A4C  7F E3 FB 78 */	mr r3, r31
/* 80464A50  4B BD 57 75 */	bl getBRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80464A54  54 7D 06 3E */	clrlwi r29, r3, 0x18
lbl_80464A58:
/* 80464A58  38 00 00 00 */	li r0, 0
/* 80464A5C  90 01 00 08 */	stw r0, 8(r1)
/* 80464A60  38 60 01 14 */	li r3, 0x114
/* 80464A64  28 1F 00 00 */	cmplwi r31, 0
/* 80464A68  41 82 00 0C */	beq lbl_80464A74
/* 80464A6C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80464A70  48 00 00 08 */	b lbl_80464A78
lbl_80464A74:
/* 80464A74  38 80 FF FF */	li r4, -1
lbl_80464A78:
/* 80464A78  38 A0 FF FF */	li r5, -1
/* 80464A7C  38 C1 00 18 */	addi r6, r1, 0x18
/* 80464A80  7F A7 EB 78 */	mr r7, r29
/* 80464A84  39 01 00 10 */	addi r8, r1, 0x10
/* 80464A88  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 80464A8C  39 40 FF FF */	li r10, -1
/* 80464A90  4B BB 54 E9 */	bl fopAcM_createChildFromOffset__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80464A94  90 7F 05 EC */	stw r3, 0x5ec(r31)
lbl_80464A98:
/* 80464A98  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80464A9C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80464AA0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80464AA4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80464AA8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80464AAC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80464AB0  80 7F 05 EC */	lwz r3, 0x5ec(r31)
/* 80464AB4  3C 03 00 01 */	addis r0, r3, 1
/* 80464AB8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80464ABC  40 82 00 0C */	bne lbl_80464AC8
/* 80464AC0  38 60 00 00 */	li r3, 0
/* 80464AC4  48 00 00 08 */	b lbl_80464ACC
lbl_80464AC8:
/* 80464AC8  38 60 00 01 */	li r3, 1
lbl_80464ACC:
/* 80464ACC  39 61 00 40 */	addi r11, r1, 0x40
/* 80464AD0  4B EF D7 59 */	bl _restgpr_29
/* 80464AD4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80464AD8  7C 08 03 A6 */	mtlr r0
/* 80464ADC  38 21 00 40 */	addi r1, r1, 0x40
/* 80464AE0  4E 80 00 20 */	blr 
