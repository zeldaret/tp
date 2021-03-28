lbl_804DAEA8:
/* 804DAEA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAEAC  7C 08 02 A6 */	mflr r0
/* 804DAEB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAEB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAEB8  93 C1 00 08 */	stw r30, 8(r1)
/* 804DAEBC  7C 7E 1B 79 */	or. r30, r3, r3
/* 804DAEC0  7C 9F 23 78 */	mr r31, r4
/* 804DAEC4  41 82 01 00 */	beq lbl_804DAFC4
/* 804DAEC8  38 7E 05 68 */	addi r3, r30, 0x568
/* 804DAECC  80 9E 14 3C */	lwz r4, 0x143c(r30)
/* 804DAED0  4B B5 21 38 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 804DAED4  38 7E 14 1C */	addi r3, r30, 0x141c
/* 804DAED8  4B DE 31 20 */	b deleteObject__14Z2SoundObjBaseFv
/* 804DAEDC  34 1E 14 1C */	addic. r0, r30, 0x141c
/* 804DAEE0  41 82 00 1C */	beq lbl_804DAEFC
/* 804DAEE4  3C 60 80 3D */	lis r3, __vt__16Z2SoundObjSimple@ha
/* 804DAEE8  38 03 AD 10 */	addi r0, r3, __vt__16Z2SoundObjSimple@l
/* 804DAEEC  90 1E 14 2C */	stw r0, 0x142c(r30)
/* 804DAEF0  38 7E 14 1C */	addi r3, r30, 0x141c
/* 804DAEF4  38 80 00 00 */	li r4, 0
/* 804DAEF8  4B DE 30 50 */	b __dt__14Z2SoundObjBaseFv
lbl_804DAEFC:
/* 804DAEFC  38 7E 13 AC */	addi r3, r30, 0x13ac
/* 804DAF00  38 80 FF FF */	li r4, -1
/* 804DAF04  4B B9 D1 88 */	b __dt__15dBgS_LinkLinChkFv
/* 804DAF08  38 7E 0D 80 */	addi r3, r30, 0xd80
/* 804DAF0C  3C 80 80 4E */	lis r4, __dt__8dCcD_CylFv@ha
/* 804DAF10  38 84 AB 18 */	addi r4, r4, __dt__8dCcD_CylFv@l
/* 804DAF14  38 A0 01 3C */	li r5, 0x13c
/* 804DAF18  38 C0 00 05 */	li r6, 5
/* 804DAF1C  4B E8 6D CC */	b __destroy_arr
/* 804DAF20  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 804DAF24  3C 80 80 4E */	lis r4, __dt__13dBgS_LinkAcchFv@ha
/* 804DAF28  38 84 AC F8 */	addi r4, r4, __dt__13dBgS_LinkAcchFv@l
/* 804DAF2C  38 A0 01 D8 */	li r5, 0x1d8
/* 804DAF30  38 C0 00 03 */	li r6, 3
/* 804DAF34  4B E8 6D B4 */	b __destroy_arr
/* 804DAF38  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 804DAF3C  3C 80 80 4E */	lis r4, __dt__12dBgS_AcchCirFv@ha
/* 804DAF40  38 84 AD BC */	addi r4, r4, __dt__12dBgS_AcchCirFv@l
/* 804DAF44  38 A0 00 40 */	li r5, 0x40
/* 804DAF48  38 C0 00 09 */	li r6, 9
/* 804DAF4C  4B E8 6D 9C */	b __destroy_arr
/* 804DAF50  34 1E 05 7C */	addic. r0, r30, 0x57c
/* 804DAF54  41 82 00 54 */	beq lbl_804DAFA8
/* 804DAF58  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 804DAF5C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 804DAF60  90 7E 05 94 */	stw r3, 0x594(r30)
/* 804DAF64  38 03 00 20 */	addi r0, r3, 0x20
/* 804DAF68  90 1E 05 98 */	stw r0, 0x598(r30)
/* 804DAF6C  34 1E 05 98 */	addic. r0, r30, 0x598
/* 804DAF70  41 82 00 24 */	beq lbl_804DAF94
/* 804DAF74  3C 60 80 4E */	lis r3, __vt__10dCcD_GStts@ha
/* 804DAF78  38 03 D7 9C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 804DAF7C  90 1E 05 98 */	stw r0, 0x598(r30)
/* 804DAF80  34 1E 05 98 */	addic. r0, r30, 0x598
/* 804DAF84  41 82 00 10 */	beq lbl_804DAF94
/* 804DAF88  3C 60 80 4E */	lis r3, __vt__10cCcD_GStts@ha
/* 804DAF8C  38 03 D7 90 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 804DAF90  90 1E 05 98 */	stw r0, 0x598(r30)
lbl_804DAF94:
/* 804DAF94  34 1E 05 7C */	addic. r0, r30, 0x57c
/* 804DAF98  41 82 00 10 */	beq lbl_804DAFA8
/* 804DAF9C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 804DAFA0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 804DAFA4  90 1E 05 94 */	stw r0, 0x594(r30)
lbl_804DAFA8:
/* 804DAFA8  7F C3 F3 78 */	mr r3, r30
/* 804DAFAC  38 80 00 00 */	li r4, 0
/* 804DAFB0  4B B3 DC DC */	b __dt__10fopAc_ac_cFv
/* 804DAFB4  7F E0 07 35 */	extsh. r0, r31
/* 804DAFB8  40 81 00 0C */	ble lbl_804DAFC4
/* 804DAFBC  7F C3 F3 78 */	mr r3, r30
/* 804DAFC0  4B DF 3D 7C */	b __dl__FPv
lbl_804DAFC4:
/* 804DAFC4  7F C3 F3 78 */	mr r3, r30
/* 804DAFC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DAFCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804DAFD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DAFD4  7C 08 03 A6 */	mtlr r0
/* 804DAFD8  38 21 00 10 */	addi r1, r1, 0x10
/* 804DAFDC  4E 80 00 20 */	blr 
