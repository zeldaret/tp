lbl_80085D98:
/* 80085D98  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80085D9C  7C 08 02 A6 */	mflr r0
/* 80085DA0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80085DA4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80085DA8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80085DAC  39 61 00 30 */	addi r11, r1, 0x30
/* 80085DB0  48 2D C4 1D */	bl _savegpr_25
/* 80085DB4  7C 79 1B 78 */	mr r25, r3
/* 80085DB8  7C 9A 23 78 */	mr r26, r4
/* 80085DBC  7C BB 2B 78 */	mr r27, r5
/* 80085DC0  80 03 00 40 */	lwz r0, 0x40(r3)
/* 80085DC4  2C 00 00 0A */	cmpwi r0, 0xa
/* 80085DC8  41 80 00 64 */	blt lbl_80085E2C
/* 80085DCC  3B 80 00 00 */	li r28, 0
/* 80085DD0  3B E0 00 00 */	li r31, 0
/* 80085DD4  57 7E 06 3E */	clrlwi r30, r27, 0x18
/* 80085DD8  C3 E2 8D 74 */	lfs f31, lit_3941(r2)
lbl_80085DDC:
/* 80085DDC  7F B9 FA 14 */	add r29, r25, r31
/* 80085DE0  88 1D 00 48 */	lbz r0, 0x48(r29)
/* 80085DE4  7C 00 F0 00 */	cmpw r0, r30
/* 80085DE8  41 81 00 18 */	bgt lbl_80085E00
/* 80085DEC  40 82 00 2C */	bne lbl_80085E18
/* 80085DF0  C0 22 8D 6C */	lfs f1, lit_3899(r2)
/* 80085DF4  48 1E 1B 61 */	bl cM_rndF__Ff
/* 80085DF8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80085DFC  40 80 00 1C */	bge lbl_80085E18
lbl_80085E00:
/* 80085E00  38 7D 00 44 */	addi r3, r29, 0x44
/* 80085E04  7F 44 D3 78 */	mr r4, r26
/* 80085E08  7F 65 DB 78 */	mr r5, r27
/* 80085E0C  38 C0 00 00 */	li r6, 0
/* 80085E10  4B FF F4 D1 */	bl Set__12dCcMassS_ObjFP8cCcD_ObjUcPFP10fopAc_ac_cP4cXyzUl_v
/* 80085E14  48 00 00 38 */	b lbl_80085E4C
lbl_80085E18:
/* 80085E18  3B 9C 00 01 */	addi r28, r28, 1
/* 80085E1C  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80085E20  3B FF 00 20 */	addi r31, r31, 0x20
/* 80085E24  41 80 FF B8 */	blt lbl_80085DDC
/* 80085E28  48 00 00 24 */	b lbl_80085E4C
lbl_80085E2C:
/* 80085E2C  54 03 28 34 */	slwi r3, r0, 5
/* 80085E30  38 63 00 44 */	addi r3, r3, 0x44
/* 80085E34  7C 79 1A 14 */	add r3, r25, r3
/* 80085E38  38 C0 00 00 */	li r6, 0
/* 80085E3C  4B FF F4 A5 */	bl Set__12dCcMassS_ObjFP8cCcD_ObjUcPFP10fopAc_ac_cP4cXyzUl_v
/* 80085E40  80 79 00 40 */	lwz r3, 0x40(r25)
/* 80085E44  38 03 00 01 */	addi r0, r3, 1
/* 80085E48  90 19 00 40 */	stw r0, 0x40(r25)
lbl_80085E4C:
/* 80085E4C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80085E50  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80085E54  39 61 00 30 */	addi r11, r1, 0x30
/* 80085E58  48 2D C3 C1 */	bl _restgpr_25
/* 80085E5C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80085E60  7C 08 03 A6 */	mtlr r0
/* 80085E64  38 21 00 40 */	addi r1, r1, 0x40
/* 80085E68  4E 80 00 20 */	blr 
