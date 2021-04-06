lbl_80460C40:
/* 80460C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80460C44  7C 08 02 A6 */	mflr r0
/* 80460C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80460C4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80460C50  7C 7F 1B 78 */	mr r31, r3
/* 80460C54  4B BD 95 35 */	bl getKind__13door_param2_cFP10fopAc_ac_c
/* 80460C58  2C 03 00 0A */	cmpwi r3, 0xa
/* 80460C5C  41 82 00 24 */	beq lbl_80460C80
/* 80460C60  40 80 00 1C */	bge lbl_80460C7C
/* 80460C64  2C 03 00 03 */	cmpwi r3, 3
/* 80460C68  40 80 00 08 */	bge lbl_80460C70
/* 80460C6C  48 00 00 14 */	b lbl_80460C80
lbl_80460C70:
/* 80460C70  2C 03 00 09 */	cmpwi r3, 9
/* 80460C74  40 80 00 38 */	bge lbl_80460CAC
/* 80460C78  48 00 00 08 */	b lbl_80460C80
lbl_80460C7C:
/* 80460C7C  2C 03 00 0C */	cmpwi r3, 0xc
lbl_80460C80:
/* 80460C80  7F E3 FB 78 */	mr r3, r31
/* 80460C84  4B BD 95 11 */	bl getDoorModel__13door_param2_cFP10fopAc_ac_c
/* 80460C88  7C 65 1B 78 */	mr r5, r3
/* 80460C8C  3C 60 80 46 */	lis r3, bmdName@ha /* 0x80467340@ha */
/* 80460C90  38 63 73 40 */	addi r3, r3, bmdName@l /* 0x80467340@l */
/* 80460C94  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80460C98  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80460C9C  38 84 00 45 */	addi r4, r4, 0x45
/* 80460CA0  4C C6 31 82 */	crclr 6
/* 80460CA4  4B F0 58 39 */	bl sprintf
/* 80460CA8  48 00 00 2C */	b lbl_80460CD4
lbl_80460CAC:
/* 80460CAC  7F E3 FB 78 */	mr r3, r31
/* 80460CB0  4B BD 94 E5 */	bl getDoorModel__13door_param2_cFP10fopAc_ac_c
/* 80460CB4  7C 65 1B 78 */	mr r5, r3
/* 80460CB8  3C 60 80 46 */	lis r3, bmdName@ha /* 0x80467340@ha */
/* 80460CBC  38 63 73 40 */	addi r3, r3, bmdName@l /* 0x80467340@l */
/* 80460CC0  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80460CC4  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80460CC8  38 84 00 5B */	addi r4, r4, 0x5b
/* 80460CCC  4C C6 31 82 */	crclr 6
/* 80460CD0  4B F0 58 0D */	bl sprintf
lbl_80460CD4:
/* 80460CD4  3C 60 80 46 */	lis r3, bmdName@ha /* 0x80467340@ha */
/* 80460CD8  38 63 73 40 */	addi r3, r3, bmdName@l /* 0x80467340@l */
/* 80460CDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80460CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80460CE4  7C 08 03 A6 */	mtlr r0
/* 80460CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80460CEC  4E 80 00 20 */	blr 
