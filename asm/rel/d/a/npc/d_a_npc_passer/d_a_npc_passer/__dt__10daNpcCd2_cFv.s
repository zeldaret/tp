lbl_80AA6404:
/* 80AA6404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA6408  7C 08 02 A6 */	mflr r0
/* 80AA640C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA6410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA6414  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA6418  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AA641C  7C 9F 23 78 */	mr r31, r4
/* 80AA6420  41 82 02 18 */	beq lbl_80AA6638
/* 80AA6424  3C 60 80 AA */	lis r3, __vt__10daNpcCd2_c@ha /* 0x80AA7438@ha */
/* 80AA6428  38 03 74 38 */	addi r0, r3, __vt__10daNpcCd2_c@l /* 0x80AA7438@l */
/* 80AA642C  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80AA6430  34 1E 09 C8 */	addic. r0, r30, 0x9c8
/* 80AA6434  41 82 00 A0 */	beq lbl_80AA64D4
/* 80AA6438  3C 60 80 AA */	lis r3, __vt__16dNpcLib_lookat_c@ha /* 0x80AA742C@ha */
/* 80AA643C  38 03 74 2C */	addi r0, r3, __vt__16dNpcLib_lookat_c@l /* 0x80AA742C@l */
/* 80AA6440  90 1E 09 C8 */	stw r0, 0x9c8(r30)
/* 80AA6444  38 7E 0A 5C */	addi r3, r30, 0xa5c
/* 80AA6448  3C 80 80 AA */	lis r4, __dt__5csXyzFv@ha /* 0x80AA6690@ha */
/* 80AA644C  38 84 66 90 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AA6690@l */
/* 80AA6450  38 A0 00 06 */	li r5, 6
/* 80AA6454  38 C0 00 04 */	li r6, 4
/* 80AA6458  4B 8B B8 91 */	bl __destroy_arr
/* 80AA645C  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80AA6460  3C 80 80 AA */	lis r4, __dt__5csXyzFv@ha /* 0x80AA6690@ha */
/* 80AA6464  38 84 66 90 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AA6690@l */
/* 80AA6468  38 A0 00 06 */	li r5, 6
/* 80AA646C  38 C0 00 04 */	li r6, 4
/* 80AA6470  4B 8B B8 79 */	bl __destroy_arr
/* 80AA6474  38 7E 0A 2C */	addi r3, r30, 0xa2c
/* 80AA6478  3C 80 80 AA */	lis r4, __dt__5csXyzFv@ha /* 0x80AA6690@ha */
/* 80AA647C  38 84 66 90 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AA6690@l */
/* 80AA6480  38 A0 00 06 */	li r5, 6
/* 80AA6484  38 C0 00 04 */	li r6, 4
/* 80AA6488  4B 8B B8 61 */	bl __destroy_arr
/* 80AA648C  38 7E 0A 14 */	addi r3, r30, 0xa14
/* 80AA6490  3C 80 80 AA */	lis r4, __dt__5csXyzFv@ha /* 0x80AA6690@ha */
/* 80AA6494  38 84 66 90 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AA6690@l */
/* 80AA6498  38 A0 00 06 */	li r5, 6
/* 80AA649C  38 C0 00 04 */	li r6, 4
/* 80AA64A0  4B 8B B8 49 */	bl __destroy_arr
/* 80AA64A4  38 7E 09 FC */	addi r3, r30, 0x9fc
/* 80AA64A8  3C 80 80 AA */	lis r4, __dt__5csXyzFv@ha /* 0x80AA6690@ha */
/* 80AA64AC  38 84 66 90 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AA6690@l */
/* 80AA64B0  38 A0 00 06 */	li r5, 6
/* 80AA64B4  38 C0 00 04 */	li r6, 4
/* 80AA64B8  4B 8B B8 31 */	bl __destroy_arr
/* 80AA64BC  38 7E 09 CC */	addi r3, r30, 0x9cc
/* 80AA64C0  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80AA6654@ha */
/* 80AA64C4  38 84 66 54 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AA6654@l */
/* 80AA64C8  38 A0 00 0C */	li r5, 0xc
/* 80AA64CC  38 C0 00 04 */	li r6, 4
/* 80AA64D0  4B 8B B8 19 */	bl __destroy_arr
lbl_80AA64D4:
/* 80AA64D4  34 1E 08 8C */	addic. r0, r30, 0x88c
/* 80AA64D8  41 82 00 84 */	beq lbl_80AA655C
/* 80AA64DC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AA64E0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AA64E4  90 7E 08 C8 */	stw r3, 0x8c8(r30)
/* 80AA64E8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AA64EC  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 80AA64F0  38 03 00 84 */	addi r0, r3, 0x84
/* 80AA64F4  90 1E 09 C4 */	stw r0, 0x9c4(r30)
/* 80AA64F8  34 1E 09 90 */	addic. r0, r30, 0x990
/* 80AA64FC  41 82 00 54 */	beq lbl_80AA6550
/* 80AA6500  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AA6504  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AA6508  90 7E 09 AC */	stw r3, 0x9ac(r30)
/* 80AA650C  38 03 00 58 */	addi r0, r3, 0x58
/* 80AA6510  90 1E 09 C4 */	stw r0, 0x9c4(r30)
/* 80AA6514  34 1E 09 B0 */	addic. r0, r30, 0x9b0
/* 80AA6518  41 82 00 10 */	beq lbl_80AA6528
/* 80AA651C  3C 60 80 AA */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AA7420@ha */
/* 80AA6520  38 03 74 20 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AA7420@l */
/* 80AA6524  90 1E 09 C4 */	stw r0, 0x9c4(r30)
lbl_80AA6528:
/* 80AA6528  34 1E 09 90 */	addic. r0, r30, 0x990
/* 80AA652C  41 82 00 24 */	beq lbl_80AA6550
/* 80AA6530  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AA6534  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AA6538  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 80AA653C  34 1E 09 90 */	addic. r0, r30, 0x990
/* 80AA6540  41 82 00 10 */	beq lbl_80AA6550
/* 80AA6544  3C 60 80 AA */	lis r3, __vt__8cM3dGAab@ha /* 0x80AA7414@ha */
/* 80AA6548  38 03 74 14 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AA7414@l */
/* 80AA654C  90 1E 09 A8 */	stw r0, 0x9a8(r30)
lbl_80AA6550:
/* 80AA6550  38 7E 08 8C */	addi r3, r30, 0x88c
/* 80AA6554  38 80 00 00 */	li r4, 0
/* 80AA6558  4B 5D DB 8D */	bl __dt__12dCcD_GObjInfFv
lbl_80AA655C:
/* 80AA655C  34 1E 08 50 */	addic. r0, r30, 0x850
/* 80AA6560  41 82 00 54 */	beq lbl_80AA65B4
/* 80AA6564  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AA6568  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AA656C  90 7E 08 68 */	stw r3, 0x868(r30)
/* 80AA6570  38 03 00 20 */	addi r0, r3, 0x20
/* 80AA6574  90 1E 08 6C */	stw r0, 0x86c(r30)
/* 80AA6578  34 1E 08 6C */	addic. r0, r30, 0x86c
/* 80AA657C  41 82 00 24 */	beq lbl_80AA65A0
/* 80AA6580  3C 60 80 AA */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AA7408@ha */
/* 80AA6584  38 03 74 08 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AA7408@l */
/* 80AA6588  90 1E 08 6C */	stw r0, 0x86c(r30)
/* 80AA658C  34 1E 08 6C */	addic. r0, r30, 0x86c
/* 80AA6590  41 82 00 10 */	beq lbl_80AA65A0
/* 80AA6594  3C 60 80 AA */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AA73FC@ha */
/* 80AA6598  38 03 73 FC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AA73FC@l */
/* 80AA659C  90 1E 08 6C */	stw r0, 0x86c(r30)
lbl_80AA65A0:
/* 80AA65A0  34 1E 08 50 */	addic. r0, r30, 0x850
/* 80AA65A4  41 82 00 10 */	beq lbl_80AA65B4
/* 80AA65A8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AA65AC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AA65B0  90 1E 08 68 */	stw r0, 0x868(r30)
lbl_80AA65B4:
/* 80AA65B4  34 1E 08 10 */	addic. r0, r30, 0x810
/* 80AA65B8  41 82 00 28 */	beq lbl_80AA65E0
/* 80AA65BC  3C 60 80 AA */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AA73F0@ha */
/* 80AA65C0  38 03 73 F0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AA73F0@l */
/* 80AA65C4  90 1E 08 1C */	stw r0, 0x81c(r30)
/* 80AA65C8  38 7E 08 24 */	addi r3, r30, 0x824
/* 80AA65CC  38 80 FF FF */	li r4, -1
/* 80AA65D0  4B 7C 89 49 */	bl __dt__8cM3dGCirFv
/* 80AA65D4  38 7E 08 10 */	addi r3, r30, 0x810
/* 80AA65D8  38 80 00 00 */	li r4, 0
/* 80AA65DC  4B 7C 1A D5 */	bl __dt__13cBgS_PolyInfoFv
lbl_80AA65E0:
/* 80AA65E0  34 1E 06 38 */	addic. r0, r30, 0x638
/* 80AA65E4  41 82 00 2C */	beq lbl_80AA6610
/* 80AA65E8  3C 60 80 AA */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AA73CC@ha */
/* 80AA65EC  38 63 73 CC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AA73CC@l */
/* 80AA65F0  90 7E 06 48 */	stw r3, 0x648(r30)
/* 80AA65F4  38 03 00 0C */	addi r0, r3, 0xc
/* 80AA65F8  90 1E 06 4C */	stw r0, 0x64c(r30)
/* 80AA65FC  38 03 00 18 */	addi r0, r3, 0x18
/* 80AA6600  90 1E 06 5C */	stw r0, 0x65c(r30)
/* 80AA6604  38 7E 06 38 */	addi r3, r30, 0x638
/* 80AA6608  38 80 00 00 */	li r4, 0
/* 80AA660C  4B 5C F9 89 */	bl __dt__9dBgS_AcchFv
lbl_80AA6610:
/* 80AA6610  38 7E 05 94 */	addi r3, r30, 0x594
/* 80AA6614  38 80 FF FF */	li r4, -1
/* 80AA6618  4B 81 A6 55 */	bl __dt__17Z2CreatureCitizenFv
/* 80AA661C  7F C3 F3 78 */	mr r3, r30
/* 80AA6620  38 80 00 00 */	li r4, 0
/* 80AA6624  4B 57 26 69 */	bl __dt__10fopAc_ac_cFv
/* 80AA6628  7F E0 07 35 */	extsh. r0, r31
/* 80AA662C  40 81 00 0C */	ble lbl_80AA6638
/* 80AA6630  7F C3 F3 78 */	mr r3, r30
/* 80AA6634  4B 82 87 09 */	bl __dl__FPv
lbl_80AA6638:
/* 80AA6638  7F C3 F3 78 */	mr r3, r30
/* 80AA663C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA6640  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA6644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA6648  7C 08 03 A6 */	mtlr r0
/* 80AA664C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA6650  4E 80 00 20 */	blr 
