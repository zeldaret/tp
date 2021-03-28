lbl_8019C3A4:
/* 8019C3A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019C3A8  7C 08 02 A6 */	mflr r0
/* 8019C3AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019C3B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019C3B4  93 C1 00 08 */	stw r30, 8(r1)
/* 8019C3B8  48 00 FE 71 */	bl dKy_Outdoor_check__Fv
/* 8019C3BC  2C 03 00 00 */	cmpwi r3, 0
/* 8019C3C0  38 00 00 05 */	li r0, 5
/* 8019C3C4  41 82 00 08 */	beq lbl_8019C3CC
/* 8019C3C8  38 00 00 01 */	li r0, 1
lbl_8019C3CC:
/* 8019C3CC  7C 1E 03 78 */	mr r30, r0
/* 8019C3D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019C3D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019C3D8  3B E3 4E 00 */	addi r31, r3, 0x4e00
/* 8019C3DC  7F E3 FB 78 */	mr r3, r31
/* 8019C3E0  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C3E4  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C3E8  48 1C C5 AD */	bl strcmp
/* 8019C3EC  2C 03 00 00 */	cmpwi r3, 0
/* 8019C3F0  40 82 00 60 */	bne lbl_8019C450
/* 8019C3F4  3B C0 00 09 */	li r30, 9
/* 8019C3F8  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8019C3FC  7C 00 07 75 */	extsb. r0, r0
/* 8019C400  40 82 00 3C */	bne lbl_8019C43C
/* 8019C404  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019C408  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019C40C  3B E3 09 58 */	addi r31, r3, 0x958
/* 8019C410  7F E3 FB 78 */	mr r3, r31
/* 8019C414  38 80 00 11 */	li r4, 0x11
/* 8019C418  4B E9 84 49 */	bl isSwitch__12dSv_memBit_cCFi
/* 8019C41C  2C 03 00 00 */	cmpwi r3, 0
/* 8019C420  41 82 00 1C */	beq lbl_8019C43C
/* 8019C424  7F E3 FB 78 */	mr r3, r31
/* 8019C428  38 80 00 75 */	li r4, 0x75
/* 8019C42C  4B E9 84 35 */	bl isSwitch__12dSv_memBit_cCFi
/* 8019C430  2C 03 00 00 */	cmpwi r3, 0
/* 8019C434  40 82 00 08 */	bne lbl_8019C43C
/* 8019C438  3B C0 00 02 */	li r30, 2
lbl_8019C43C:
/* 8019C43C  4B E9 14 FD */	bl dComIfGs_sense_type_change_Get__Fv
/* 8019C440  7C 60 07 75 */	extsb. r0, r3
/* 8019C444  40 81 06 AC */	ble lbl_8019CAF0
/* 8019C448  3B C0 00 0D */	li r30, 0xd
/* 8019C44C  48 00 06 A4 */	b lbl_8019CAF0
lbl_8019C450:
/* 8019C450  7F E3 FB 78 */	mr r3, r31
/* 8019C454  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C458  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C45C  38 84 00 08 */	addi r4, r4, 8
/* 8019C460  48 1C C5 35 */	bl strcmp
/* 8019C464  2C 03 00 00 */	cmpwi r3, 0
/* 8019C468  40 82 00 20 */	bne lbl_8019C488
/* 8019C46C  4B E9 14 CD */	bl dComIfGs_sense_type_change_Get__Fv
/* 8019C470  7C 60 07 75 */	extsb. r0, r3
/* 8019C474  40 81 00 0C */	ble lbl_8019C480
/* 8019C478  3B C0 00 0D */	li r30, 0xd
/* 8019C47C  48 00 06 74 */	b lbl_8019CAF0
lbl_8019C480:
/* 8019C480  3B C0 00 01 */	li r30, 1
/* 8019C484  48 00 06 6C */	b lbl_8019CAF0
lbl_8019C488:
/* 8019C488  7F E3 FB 78 */	mr r3, r31
/* 8019C48C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C490  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C494  38 84 00 10 */	addi r4, r4, 0x10
/* 8019C498  48 1C C4 FD */	bl strcmp
/* 8019C49C  2C 03 00 00 */	cmpwi r3, 0
/* 8019C4A0  40 82 00 0C */	bne lbl_8019C4AC
/* 8019C4A4  3B C0 00 01 */	li r30, 1
/* 8019C4A8  48 00 06 48 */	b lbl_8019CAF0
lbl_8019C4AC:
/* 8019C4AC  7F E3 FB 78 */	mr r3, r31
/* 8019C4B0  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C4B4  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C4B8  38 84 00 17 */	addi r4, r4, 0x17
/* 8019C4BC  48 1C C4 D9 */	bl strcmp
/* 8019C4C0  2C 03 00 00 */	cmpwi r3, 0
/* 8019C4C4  40 82 00 0C */	bne lbl_8019C4D0
/* 8019C4C8  3B C0 00 03 */	li r30, 3
/* 8019C4CC  48 00 06 24 */	b lbl_8019CAF0
lbl_8019C4D0:
/* 8019C4D0  7F E3 FB 78 */	mr r3, r31
/* 8019C4D4  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C4D8  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C4DC  38 84 00 1F */	addi r4, r4, 0x1f
/* 8019C4E0  48 1C C4 B5 */	bl strcmp
/* 8019C4E4  2C 03 00 00 */	cmpwi r3, 0
/* 8019C4E8  40 82 00 0C */	bne lbl_8019C4F4
/* 8019C4EC  3B C0 00 06 */	li r30, 6
/* 8019C4F0  48 00 06 00 */	b lbl_8019CAF0
lbl_8019C4F4:
/* 8019C4F4  7F E3 FB 78 */	mr r3, r31
/* 8019C4F8  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C4FC  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C500  38 84 00 27 */	addi r4, r4, 0x27
/* 8019C504  48 1C C4 91 */	bl strcmp
/* 8019C508  2C 03 00 00 */	cmpwi r3, 0
/* 8019C50C  40 82 00 0C */	bne lbl_8019C518
/* 8019C510  3B C0 00 04 */	li r30, 4
/* 8019C514  48 00 05 DC */	b lbl_8019CAF0
lbl_8019C518:
/* 8019C518  7F E3 FB 78 */	mr r3, r31
/* 8019C51C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C520  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C524  38 84 00 2F */	addi r4, r4, 0x2f
/* 8019C528  38 A0 00 06 */	li r5, 6
/* 8019C52C  48 1C 9B 61 */	bl memcmp
/* 8019C530  2C 03 00 00 */	cmpwi r3, 0
/* 8019C534  41 82 00 E4 */	beq lbl_8019C618
/* 8019C538  7F E3 FB 78 */	mr r3, r31
/* 8019C53C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C540  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C544  38 84 00 36 */	addi r4, r4, 0x36
/* 8019C548  38 A0 00 06 */	li r5, 6
/* 8019C54C  48 1C 9B 41 */	bl memcmp
/* 8019C550  2C 03 00 00 */	cmpwi r3, 0
/* 8019C554  41 82 00 C4 */	beq lbl_8019C618
/* 8019C558  7F E3 FB 78 */	mr r3, r31
/* 8019C55C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C560  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C564  38 84 00 3D */	addi r4, r4, 0x3d
/* 8019C568  38 A0 00 06 */	li r5, 6
/* 8019C56C  48 1C 9B 21 */	bl memcmp
/* 8019C570  2C 03 00 00 */	cmpwi r3, 0
/* 8019C574  41 82 00 A4 */	beq lbl_8019C618
/* 8019C578  7F E3 FB 78 */	mr r3, r31
/* 8019C57C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C580  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C584  38 84 00 44 */	addi r4, r4, 0x44
/* 8019C588  38 A0 00 06 */	li r5, 6
/* 8019C58C  48 1C 9B 01 */	bl memcmp
/* 8019C590  2C 03 00 00 */	cmpwi r3, 0
/* 8019C594  41 82 00 84 */	beq lbl_8019C618
/* 8019C598  7F E3 FB 78 */	mr r3, r31
/* 8019C59C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C5A0  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C5A4  38 84 00 4B */	addi r4, r4, 0x4b
/* 8019C5A8  38 A0 00 06 */	li r5, 6
/* 8019C5AC  48 1C 9A E1 */	bl memcmp
/* 8019C5B0  2C 03 00 00 */	cmpwi r3, 0
/* 8019C5B4  41 82 00 64 */	beq lbl_8019C618
/* 8019C5B8  7F E3 FB 78 */	mr r3, r31
/* 8019C5BC  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C5C0  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C5C4  38 84 00 52 */	addi r4, r4, 0x52
/* 8019C5C8  38 A0 00 06 */	li r5, 6
/* 8019C5CC  48 1C 9A C1 */	bl memcmp
/* 8019C5D0  2C 03 00 00 */	cmpwi r3, 0
/* 8019C5D4  41 82 00 44 */	beq lbl_8019C618
/* 8019C5D8  7F E3 FB 78 */	mr r3, r31
/* 8019C5DC  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C5E0  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C5E4  38 84 00 59 */	addi r4, r4, 0x59
/* 8019C5E8  38 A0 00 06 */	li r5, 6
/* 8019C5EC  48 1C 9A A1 */	bl memcmp
/* 8019C5F0  2C 03 00 00 */	cmpwi r3, 0
/* 8019C5F4  41 82 00 24 */	beq lbl_8019C618
/* 8019C5F8  7F E3 FB 78 */	mr r3, r31
/* 8019C5FC  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C600  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C604  38 84 00 60 */	addi r4, r4, 0x60
/* 8019C608  38 A0 00 06 */	li r5, 6
/* 8019C60C  48 1C 9A 81 */	bl memcmp
/* 8019C610  2C 03 00 00 */	cmpwi r3, 0
/* 8019C614  40 82 00 0C */	bne lbl_8019C620
lbl_8019C618:
/* 8019C618  3B C0 00 05 */	li r30, 5
/* 8019C61C  48 00 04 D4 */	b lbl_8019CAF0
lbl_8019C620:
/* 8019C620  7F E3 FB 78 */	mr r3, r31
/* 8019C624  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C628  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C62C  38 84 00 67 */	addi r4, r4, 0x67
/* 8019C630  48 1C C3 65 */	bl strcmp
/* 8019C634  2C 03 00 00 */	cmpwi r3, 0
/* 8019C638  41 82 00 20 */	beq lbl_8019C658
/* 8019C63C  7F E3 FB 78 */	mr r3, r31
/* 8019C640  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C644  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C648  38 84 00 6F */	addi r4, r4, 0x6f
/* 8019C64C  48 1C C3 49 */	bl strcmp
/* 8019C650  2C 03 00 00 */	cmpwi r3, 0
/* 8019C654  40 82 00 0C */	bne lbl_8019C660
lbl_8019C658:
/* 8019C658  3B C0 00 0E */	li r30, 0xe
/* 8019C65C  48 00 04 94 */	b lbl_8019CAF0
lbl_8019C660:
/* 8019C660  7F E3 FB 78 */	mr r3, r31
/* 8019C664  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C668  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C66C  38 84 00 77 */	addi r4, r4, 0x77
/* 8019C670  48 1C C3 25 */	bl strcmp
/* 8019C674  2C 03 00 00 */	cmpwi r3, 0
/* 8019C678  40 82 00 0C */	bne lbl_8019C684
/* 8019C67C  3B C0 00 0F */	li r30, 0xf
/* 8019C680  48 00 04 70 */	b lbl_8019CAF0
lbl_8019C684:
/* 8019C684  7F E3 FB 78 */	mr r3, r31
/* 8019C688  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C68C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C690  38 84 00 7F */	addi r4, r4, 0x7f
/* 8019C694  48 1C C3 01 */	bl strcmp
/* 8019C698  2C 03 00 00 */	cmpwi r3, 0
/* 8019C69C  40 82 00 38 */	bne lbl_8019C6D4
/* 8019C6A0  3B C0 00 08 */	li r30, 8
/* 8019C6A4  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8019C6A8  7C 00 07 74 */	extsb r0, r0
/* 8019C6AC  2C 00 00 02 */	cmpwi r0, 2
/* 8019C6B0  40 82 00 0C */	bne lbl_8019C6BC
/* 8019C6B4  3B C0 00 0E */	li r30, 0xe
/* 8019C6B8  48 00 04 38 */	b lbl_8019CAF0
lbl_8019C6BC:
/* 8019C6BC  2C 00 00 03 */	cmpwi r0, 3
/* 8019C6C0  41 82 00 0C */	beq lbl_8019C6CC
/* 8019C6C4  2C 00 00 08 */	cmpwi r0, 8
/* 8019C6C8  40 82 04 28 */	bne lbl_8019CAF0
lbl_8019C6CC:
/* 8019C6CC  3B C0 00 06 */	li r30, 6
/* 8019C6D0  48 00 04 20 */	b lbl_8019CAF0
lbl_8019C6D4:
/* 8019C6D4  7F E3 FB 78 */	mr r3, r31
/* 8019C6D8  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C6DC  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C6E0  38 84 00 86 */	addi r4, r4, 0x86
/* 8019C6E4  48 1C C2 B1 */	bl strcmp
/* 8019C6E8  2C 03 00 00 */	cmpwi r3, 0
/* 8019C6EC  40 82 00 0C */	bne lbl_8019C6F8
/* 8019C6F0  3B C0 00 04 */	li r30, 4
/* 8019C6F4  48 00 03 FC */	b lbl_8019CAF0
lbl_8019C6F8:
/* 8019C6F8  7F E3 FB 78 */	mr r3, r31
/* 8019C6FC  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C700  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C704  38 84 00 8E */	addi r4, r4, 0x8e
/* 8019C708  48 1C C2 8D */	bl strcmp
/* 8019C70C  2C 03 00 00 */	cmpwi r3, 0
/* 8019C710  41 82 00 40 */	beq lbl_8019C750
/* 8019C714  7F E3 FB 78 */	mr r3, r31
/* 8019C718  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C71C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C720  38 84 00 95 */	addi r4, r4, 0x95
/* 8019C724  48 1C C2 71 */	bl strcmp
/* 8019C728  2C 03 00 00 */	cmpwi r3, 0
/* 8019C72C  41 82 00 24 */	beq lbl_8019C750
/* 8019C730  7F E3 FB 78 */	mr r3, r31
/* 8019C734  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C738  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C73C  38 84 00 9D */	addi r4, r4, 0x9d
/* 8019C740  38 A0 00 06 */	li r5, 6
/* 8019C744  48 1C 99 49 */	bl memcmp
/* 8019C748  2C 03 00 00 */	cmpwi r3, 0
/* 8019C74C  40 82 00 38 */	bne lbl_8019C784
lbl_8019C750:
/* 8019C750  3B C0 00 07 */	li r30, 7
/* 8019C754  7F E3 FB 78 */	mr r3, r31
/* 8019C758  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C75C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C760  38 84 00 8E */	addi r4, r4, 0x8e
/* 8019C764  48 1C C2 31 */	bl strcmp
/* 8019C768  2C 03 00 00 */	cmpwi r3, 0
/* 8019C76C  40 82 03 84 */	bne lbl_8019CAF0
/* 8019C770  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8019C774  2C 00 00 04 */	cmpwi r0, 4
/* 8019C778  40 82 03 78 */	bne lbl_8019CAF0
/* 8019C77C  3B C0 00 04 */	li r30, 4
/* 8019C780  48 00 03 70 */	b lbl_8019CAF0
lbl_8019C784:
/* 8019C784  7F E3 FB 78 */	mr r3, r31
/* 8019C788  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C78C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C790  38 84 00 A4 */	addi r4, r4, 0xa4
/* 8019C794  48 1C C2 01 */	bl strcmp
/* 8019C798  2C 03 00 00 */	cmpwi r3, 0
/* 8019C79C  41 82 00 3C */	beq lbl_8019C7D8
/* 8019C7A0  7F E3 FB 78 */	mr r3, r31
/* 8019C7A4  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C7A8  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C7AC  38 84 00 AC */	addi r4, r4, 0xac
/* 8019C7B0  48 1C C1 E5 */	bl strcmp
/* 8019C7B4  2C 03 00 00 */	cmpwi r3, 0
/* 8019C7B8  41 82 00 20 */	beq lbl_8019C7D8
/* 8019C7BC  7F E3 FB 78 */	mr r3, r31
/* 8019C7C0  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C7C4  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C7C8  38 84 00 B4 */	addi r4, r4, 0xb4
/* 8019C7CC  48 1C C1 C9 */	bl strcmp
/* 8019C7D0  2C 03 00 00 */	cmpwi r3, 0
/* 8019C7D4  40 82 00 0C */	bne lbl_8019C7E0
lbl_8019C7D8:
/* 8019C7D8  3B C0 00 01 */	li r30, 1
/* 8019C7DC  48 00 03 14 */	b lbl_8019CAF0
lbl_8019C7E0:
/* 8019C7E0  7F E3 FB 78 */	mr r3, r31
/* 8019C7E4  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C7E8  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C7EC  38 84 00 BC */	addi r4, r4, 0xbc
/* 8019C7F0  38 A0 00 06 */	li r5, 6
/* 8019C7F4  48 1C 98 99 */	bl memcmp
/* 8019C7F8  2C 03 00 00 */	cmpwi r3, 0
/* 8019C7FC  41 82 00 CC */	beq lbl_8019C8C8
/* 8019C800  7F E3 FB 78 */	mr r3, r31
/* 8019C804  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C808  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C80C  38 84 00 C3 */	addi r4, r4, 0xc3
/* 8019C810  48 1C C1 85 */	bl strcmp
/* 8019C814  2C 03 00 00 */	cmpwi r3, 0
/* 8019C818  41 82 00 B0 */	beq lbl_8019C8C8
/* 8019C81C  7F E3 FB 78 */	mr r3, r31
/* 8019C820  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C824  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C828  38 84 00 CA */	addi r4, r4, 0xca
/* 8019C82C  48 1C C1 69 */	bl strcmp
/* 8019C830  2C 03 00 00 */	cmpwi r3, 0
/* 8019C834  41 82 00 94 */	beq lbl_8019C8C8
/* 8019C838  7F E3 FB 78 */	mr r3, r31
/* 8019C83C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C840  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C844  38 84 00 D2 */	addi r4, r4, 0xd2
/* 8019C848  38 A0 00 06 */	li r5, 6
/* 8019C84C  48 1C 98 41 */	bl memcmp
/* 8019C850  2C 03 00 00 */	cmpwi r3, 0
/* 8019C854  41 82 00 74 */	beq lbl_8019C8C8
/* 8019C858  7F E3 FB 78 */	mr r3, r31
/* 8019C85C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C860  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C864  38 84 00 D9 */	addi r4, r4, 0xd9
/* 8019C868  48 1C C1 2D */	bl strcmp
/* 8019C86C  2C 03 00 00 */	cmpwi r3, 0
/* 8019C870  41 82 00 58 */	beq lbl_8019C8C8
/* 8019C874  7F E3 FB 78 */	mr r3, r31
/* 8019C878  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C87C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C880  38 84 00 E1 */	addi r4, r4, 0xe1
/* 8019C884  48 1C C1 11 */	bl strcmp
/* 8019C888  2C 03 00 00 */	cmpwi r3, 0
/* 8019C88C  41 82 00 3C */	beq lbl_8019C8C8
/* 8019C890  7F E3 FB 78 */	mr r3, r31
/* 8019C894  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C898  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C89C  38 84 00 E9 */	addi r4, r4, 0xe9
/* 8019C8A0  48 1C C0 F5 */	bl strcmp
/* 8019C8A4  2C 03 00 00 */	cmpwi r3, 0
/* 8019C8A8  41 82 00 20 */	beq lbl_8019C8C8
/* 8019C8AC  7F E3 FB 78 */	mr r3, r31
/* 8019C8B0  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C8B4  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C8B8  38 84 00 F0 */	addi r4, r4, 0xf0
/* 8019C8BC  48 1C C0 D9 */	bl strcmp
/* 8019C8C0  2C 03 00 00 */	cmpwi r3, 0
/* 8019C8C4  40 82 00 0C */	bne lbl_8019C8D0
lbl_8019C8C8:
/* 8019C8C8  3B C0 00 08 */	li r30, 8
/* 8019C8CC  48 00 02 24 */	b lbl_8019CAF0
lbl_8019C8D0:
/* 8019C8D0  7F E3 FB 78 */	mr r3, r31
/* 8019C8D4  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C8D8  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C8DC  38 84 00 F8 */	addi r4, r4, 0xf8
/* 8019C8E0  48 1C C0 B5 */	bl strcmp
/* 8019C8E4  2C 03 00 00 */	cmpwi r3, 0
/* 8019C8E8  40 82 00 0C */	bne lbl_8019C8F4
/* 8019C8EC  3B C0 00 0E */	li r30, 0xe
/* 8019C8F0  48 00 02 00 */	b lbl_8019CAF0
lbl_8019C8F4:
/* 8019C8F4  7F E3 FB 78 */	mr r3, r31
/* 8019C8F8  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C8FC  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C900  38 84 01 00 */	addi r4, r4, 0x100
/* 8019C904  38 A0 00 06 */	li r5, 6
/* 8019C908  48 1C 97 85 */	bl memcmp
/* 8019C90C  2C 03 00 00 */	cmpwi r3, 0
/* 8019C910  40 82 00 0C */	bne lbl_8019C91C
/* 8019C914  3B C0 00 09 */	li r30, 9
/* 8019C918  48 00 01 D8 */	b lbl_8019CAF0
lbl_8019C91C:
/* 8019C91C  7F E3 FB 78 */	mr r3, r31
/* 8019C920  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C924  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C928  38 84 01 07 */	addi r4, r4, 0x107
/* 8019C92C  38 A0 00 06 */	li r5, 6
/* 8019C930  48 1C 97 5D */	bl memcmp
/* 8019C934  2C 03 00 00 */	cmpwi r3, 0
/* 8019C938  41 82 00 24 */	beq lbl_8019C95C
/* 8019C93C  7F E3 FB 78 */	mr r3, r31
/* 8019C940  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C944  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C948  38 84 01 0E */	addi r4, r4, 0x10e
/* 8019C94C  38 A0 00 06 */	li r5, 6
/* 8019C950  48 1C 97 3D */	bl memcmp
/* 8019C954  2C 03 00 00 */	cmpwi r3, 0
/* 8019C958  40 82 00 0C */	bne lbl_8019C964
lbl_8019C95C:
/* 8019C95C  3B C0 00 0A */	li r30, 0xa
/* 8019C960  48 00 01 90 */	b lbl_8019CAF0
lbl_8019C964:
/* 8019C964  7F E3 FB 78 */	mr r3, r31
/* 8019C968  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C96C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C970  38 84 01 15 */	addi r4, r4, 0x115
/* 8019C974  48 1C C0 21 */	bl strcmp
/* 8019C978  2C 03 00 00 */	cmpwi r3, 0
/* 8019C97C  41 82 00 AC */	beq lbl_8019CA28
/* 8019C980  7F E3 FB 78 */	mr r3, r31
/* 8019C984  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C988  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C98C  38 84 01 1C */	addi r4, r4, 0x11c
/* 8019C990  48 1C C0 05 */	bl strcmp
/* 8019C994  2C 03 00 00 */	cmpwi r3, 0
/* 8019C998  41 82 00 90 */	beq lbl_8019CA28
/* 8019C99C  7F E3 FB 78 */	mr r3, r31
/* 8019C9A0  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C9A4  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C9A8  38 84 01 24 */	addi r4, r4, 0x124
/* 8019C9AC  48 1C BF E9 */	bl strcmp
/* 8019C9B0  2C 03 00 00 */	cmpwi r3, 0
/* 8019C9B4  41 82 00 74 */	beq lbl_8019CA28
/* 8019C9B8  7F E3 FB 78 */	mr r3, r31
/* 8019C9BC  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C9C0  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C9C4  38 84 01 2C */	addi r4, r4, 0x12c
/* 8019C9C8  48 1C BF CD */	bl strcmp
/* 8019C9CC  2C 03 00 00 */	cmpwi r3, 0
/* 8019C9D0  41 82 00 58 */	beq lbl_8019CA28
/* 8019C9D4  7F E3 FB 78 */	mr r3, r31
/* 8019C9D8  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C9DC  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C9E0  38 84 01 34 */	addi r4, r4, 0x134
/* 8019C9E4  48 1C BF B1 */	bl strcmp
/* 8019C9E8  2C 03 00 00 */	cmpwi r3, 0
/* 8019C9EC  41 82 00 3C */	beq lbl_8019CA28
/* 8019C9F0  7F E3 FB 78 */	mr r3, r31
/* 8019C9F4  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019C9F8  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019C9FC  38 84 01 3C */	addi r4, r4, 0x13c
/* 8019CA00  48 1C BF 95 */	bl strcmp
/* 8019CA04  2C 03 00 00 */	cmpwi r3, 0
/* 8019CA08  41 82 00 20 */	beq lbl_8019CA28
/* 8019CA0C  7F E3 FB 78 */	mr r3, r31
/* 8019CA10  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019CA14  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019CA18  38 84 01 44 */	addi r4, r4, 0x144
/* 8019CA1C  48 1C BF 79 */	bl strcmp
/* 8019CA20  2C 03 00 00 */	cmpwi r3, 0
/* 8019CA24  40 82 00 38 */	bne lbl_8019CA5C
lbl_8019CA28:
/* 8019CA28  3B C0 00 0B */	li r30, 0xb
/* 8019CA2C  7F E3 FB 78 */	mr r3, r31
/* 8019CA30  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019CA34  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019CA38  38 84 01 15 */	addi r4, r4, 0x115
/* 8019CA3C  48 1C BF 59 */	bl strcmp
/* 8019CA40  2C 03 00 00 */	cmpwi r3, 0
/* 8019CA44  40 82 00 AC */	bne lbl_8019CAF0
/* 8019CA48  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8019CA4C  2C 00 00 01 */	cmpwi r0, 1
/* 8019CA50  40 82 00 A0 */	bne lbl_8019CAF0
/* 8019CA54  3B C0 00 0C */	li r30, 0xc
/* 8019CA58  48 00 00 98 */	b lbl_8019CAF0
lbl_8019CA5C:
/* 8019CA5C  7F E3 FB 78 */	mr r3, r31
/* 8019CA60  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019CA64  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019CA68  38 84 01 4C */	addi r4, r4, 0x14c
/* 8019CA6C  48 1C BF 29 */	bl strcmp
/* 8019CA70  2C 03 00 00 */	cmpwi r3, 0
/* 8019CA74  41 82 00 3C */	beq lbl_8019CAB0
/* 8019CA78  7F E3 FB 78 */	mr r3, r31
/* 8019CA7C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019CA80  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019CA84  38 84 01 54 */	addi r4, r4, 0x154
/* 8019CA88  48 1C BF 0D */	bl strcmp
/* 8019CA8C  2C 03 00 00 */	cmpwi r3, 0
/* 8019CA90  41 82 00 20 */	beq lbl_8019CAB0
/* 8019CA94  7F E3 FB 78 */	mr r3, r31
/* 8019CA98  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019CA9C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019CAA0  38 84 01 5C */	addi r4, r4, 0x15c
/* 8019CAA4  48 1C BE F1 */	bl strcmp
/* 8019CAA8  2C 03 00 00 */	cmpwi r3, 0
/* 8019CAAC  40 82 00 0C */	bne lbl_8019CAB8
lbl_8019CAB0:
/* 8019CAB0  3B C0 00 0C */	li r30, 0xc
/* 8019CAB4  48 00 00 3C */	b lbl_8019CAF0
lbl_8019CAB8:
/* 8019CAB8  7F E3 FB 78 */	mr r3, r31
/* 8019CABC  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019CAC0  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019CAC4  38 84 01 64 */	addi r4, r4, 0x164
/* 8019CAC8  48 1C BE CD */	bl strcmp
/* 8019CACC  2C 03 00 00 */	cmpwi r3, 0
/* 8019CAD0  40 82 00 20 */	bne lbl_8019CAF0
/* 8019CAD4  3B C0 00 0C */	li r30, 0xc
/* 8019CAD8  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8019CADC  7C 00 07 75 */	extsb. r0, r0
/* 8019CAE0  41 82 00 0C */	beq lbl_8019CAEC
/* 8019CAE4  2C 00 00 02 */	cmpwi r0, 2
/* 8019CAE8  40 82 00 08 */	bne lbl_8019CAF0
lbl_8019CAEC:
/* 8019CAEC  3B C0 00 0B */	li r30, 0xb
lbl_8019CAF0:
/* 8019CAF0  7F C3 F3 78 */	mr r3, r30
/* 8019CAF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019CAF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8019CAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019CB00  7C 08 03 A6 */	mtlr r0
/* 8019CB04  38 21 00 10 */	addi r1, r1, 0x10
/* 8019CB08  4E 80 00 20 */	blr 
