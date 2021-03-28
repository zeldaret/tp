lbl_8078E868:
/* 8078E868  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8078E86C  7C 08 02 A6 */	mflr r0
/* 8078E870  90 01 00 34 */	stw r0, 0x34(r1)
/* 8078E874  39 61 00 30 */	addi r11, r1, 0x30
/* 8078E878  4B BD 39 60 */	b _savegpr_28
/* 8078E87C  7C 7F 1B 78 */	mr r31, r3
/* 8078E880  A8 03 06 A0 */	lha r0, 0x6a0(r3)
/* 8078E884  2C 00 00 00 */	cmpwi r0, 0
/* 8078E888  40 82 01 B8 */	bne lbl_8078EA40
/* 8078E88C  38 7F 08 FC */	addi r3, r31, 0x8fc
/* 8078E890  4B 8F 4F A0 */	b Move__10dCcD_GSttsFv
/* 8078E894  3B 80 00 00 */	li r28, 0
/* 8078E898  3B C0 00 00 */	li r30, 0
lbl_8078E89C:
/* 8078E89C  3B BE 09 1C */	addi r29, r30, 0x91c
/* 8078E8A0  7F BF EA 14 */	add r29, r31, r29
/* 8078E8A4  7F A3 EB 78 */	mr r3, r29
/* 8078E8A8  4B 8F 5B B8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8078E8AC  28 03 00 00 */	cmplwi r3, 0
/* 8078E8B0  41 82 01 80 */	beq lbl_8078EA30
/* 8078E8B4  7F A3 EB 78 */	mr r3, r29
/* 8078E8B8  4B 8F 5C 40 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8078E8BC  90 7F 0C C4 */	stw r3, 0xcc4(r31)
/* 8078E8C0  7F E3 FB 78 */	mr r3, r31
/* 8078E8C4  38 9F 0C C4 */	addi r4, r31, 0xcc4
/* 8078E8C8  4B 8F 93 3C */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8078E8CC  80 7F 0C C4 */	lwz r3, 0xcc4(r31)
/* 8078E8D0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8078E8D4  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 8078E8D8  41 82 00 10 */	beq lbl_8078E8E8
/* 8078E8DC  38 00 00 14 */	li r0, 0x14
/* 8078E8E0  B0 1F 06 A0 */	sth r0, 0x6a0(r31)
/* 8078E8E4  48 00 00 0C */	b lbl_8078E8F0
lbl_8078E8E8:
/* 8078E8E8  38 00 00 0A */	li r0, 0xa
/* 8078E8EC  B0 1F 06 A0 */	sth r0, 0x6a0(r31)
lbl_8078E8F0:
/* 8078E8F0  38 00 00 00 */	li r0, 0
/* 8078E8F4  B0 1F 06 78 */	sth r0, 0x678(r31)
/* 8078E8F8  38 60 00 0A */	li r3, 0xa
/* 8078E8FC  98 7F 0C EB */	stb r3, 0xceb(r31)
/* 8078E900  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 8078E904  2C 00 00 00 */	cmpwi r0, 0
/* 8078E908  41 81 00 70 */	bgt lbl_8078E978
/* 8078E90C  38 00 00 0B */	li r0, 0xb
/* 8078E910  B0 1F 06 76 */	sth r0, 0x676(r31)
/* 8078E914  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700A2@ha */
/* 8078E918  38 03 00 A2 */	addi r0, r3, 0x00A2 /* 0x000700A2@l */
/* 8078E91C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078E920  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8078E924  38 81 00 14 */	addi r4, r1, 0x14
/* 8078E928  38 A0 FF FF */	li r5, -1
/* 8078E92C  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8078E930  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8078E934  7D 89 03 A6 */	mtctr r12
/* 8078E938  4E 80 04 21 */	bctrl 
/* 8078E93C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700A5@ha */
/* 8078E940  38 03 00 A5 */	addi r0, r3, 0x00A5 /* 0x000700A5@l */
/* 8078E944  90 01 00 10 */	stw r0, 0x10(r1)
/* 8078E948  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8078E94C  38 81 00 10 */	addi r4, r1, 0x10
/* 8078E950  38 A0 00 00 */	li r5, 0
/* 8078E954  38 C0 FF FF */	li r6, -1
/* 8078E958  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8078E95C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8078E960  7D 89 03 A6 */	mtctr r12
/* 8078E964  4E 80 04 21 */	bctrl 
/* 8078E968  3C 60 80 79 */	lis r3, lit_4144@ha
/* 8078E96C  C0 03 1D C8 */	lfs f0, lit_4144@l(r3)
/* 8078E970  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 8078E974  48 00 00 80 */	b lbl_8078E9F4
lbl_8078E978:
/* 8078E978  B0 7F 06 76 */	sth r3, 0x676(r31)
/* 8078E97C  88 1F 0C E4 */	lbz r0, 0xce4(r31)
/* 8078E980  28 00 00 10 */	cmplwi r0, 0x10
/* 8078E984  40 82 00 3C */	bne lbl_8078E9C0
/* 8078E988  3C 60 80 79 */	lis r3, lit_4145@ha
/* 8078E98C  C0 03 1D CC */	lfs f0, lit_4145@l(r3)
/* 8078E990  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 8078E994  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700A1@ha */
/* 8078E998  38 03 00 A1 */	addi r0, r3, 0x00A1 /* 0x000700A1@l */
/* 8078E99C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8078E9A0  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8078E9A4  38 81 00 0C */	addi r4, r1, 0xc
/* 8078E9A8  38 A0 FF FF */	li r5, -1
/* 8078E9AC  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8078E9B0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8078E9B4  7D 89 03 A6 */	mtctr r12
/* 8078E9B8  4E 80 04 21 */	bctrl 
/* 8078E9BC  48 00 00 38 */	b lbl_8078E9F4
lbl_8078E9C0:
/* 8078E9C0  3C 60 80 79 */	lis r3, lit_4144@ha
/* 8078E9C4  C0 03 1D C8 */	lfs f0, lit_4144@l(r3)
/* 8078E9C8  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 8078E9CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700A1@ha */
/* 8078E9D0  38 03 00 A1 */	addi r0, r3, 0x00A1 /* 0x000700A1@l */
/* 8078E9D4  90 01 00 08 */	stw r0, 8(r1)
/* 8078E9D8  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8078E9DC  38 81 00 08 */	addi r4, r1, 8
/* 8078E9E0  38 A0 FF FF */	li r5, -1
/* 8078E9E4  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8078E9E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8078E9EC  7D 89 03 A6 */	mtctr r12
/* 8078E9F0  4E 80 04 21 */	bctrl 
lbl_8078E9F4:
/* 8078E9F4  7F E3 FB 78 */	mr r3, r31
/* 8078E9F8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8078E9FC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8078EA00  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8078EA04  4B 88 BD 0C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8078EA08  B0 7F 06 A8 */	sth r3, 0x6a8(r31)
/* 8078EA0C  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 8078EA10  2C 00 00 01 */	cmpwi r0, 1
/* 8078EA14  41 81 00 2C */	bgt lbl_8078EA40
/* 8078EA18  38 00 00 00 */	li r0, 0
/* 8078EA1C  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 8078EA20  38 00 00 03 */	li r0, 3
/* 8078EA24  7C 7F F2 14 */	add r3, r31, r30
/* 8078EA28  98 03 09 D6 */	stb r0, 0x9d6(r3)
/* 8078EA2C  48 00 00 14 */	b lbl_8078EA40
lbl_8078EA30:
/* 8078EA30  3B 9C 00 01 */	addi r28, r28, 1
/* 8078EA34  2C 1C 00 02 */	cmpwi r28, 2
/* 8078EA38  3B DE 01 38 */	addi r30, r30, 0x138
/* 8078EA3C  41 80 FE 60 */	blt lbl_8078E89C
lbl_8078EA40:
/* 8078EA40  39 61 00 30 */	addi r11, r1, 0x30
/* 8078EA44  4B BD 37 E0 */	b _restgpr_28
/* 8078EA48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8078EA4C  7C 08 03 A6 */	mtlr r0
/* 8078EA50  38 21 00 30 */	addi r1, r1, 0x30
/* 8078EA54  4E 80 00 20 */	blr 
