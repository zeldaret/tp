lbl_809BAE80:
/* 809BAE80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BAE84  7C 08 02 A6 */	mflr r0
/* 809BAE88  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BAE8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BAE90  93 C1 00 08 */	stw r30, 8(r1)
/* 809BAE94  7C 7E 1B 79 */	or. r30, r3, r3
/* 809BAE98  7C 9F 23 78 */	mr r31, r4
/* 809BAE9C  41 82 02 18 */	beq lbl_809BB0B4
/* 809BAEA0  3C 60 80 9C */	lis r3, __vt__10daNpcCd2_c@ha
/* 809BAEA4  38 03 B5 14 */	addi r0, r3, __vt__10daNpcCd2_c@l
/* 809BAEA8  90 1E 05 68 */	stw r0, 0x568(r30)
/* 809BAEAC  34 1E 09 C8 */	addic. r0, r30, 0x9c8
/* 809BAEB0  41 82 00 A0 */	beq lbl_809BAF50
/* 809BAEB4  3C 60 80 9C */	lis r3, __vt__16dNpcLib_lookat_c@ha
/* 809BAEB8  38 03 B4 C0 */	addi r0, r3, __vt__16dNpcLib_lookat_c@l
/* 809BAEBC  90 1E 09 C8 */	stw r0, 0x9c8(r30)
/* 809BAEC0  38 7E 0A 5C */	addi r3, r30, 0xa5c
/* 809BAEC4  3C 80 80 9C */	lis r4, __dt__5csXyzFv@ha
/* 809BAEC8  38 84 B0 D0 */	addi r4, r4, __dt__5csXyzFv@l
/* 809BAECC  38 A0 00 06 */	li r5, 6
/* 809BAED0  38 C0 00 04 */	li r6, 4
/* 809BAED4  4B 9A 6E 14 */	b __destroy_arr
/* 809BAED8  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 809BAEDC  3C 80 80 9C */	lis r4, __dt__5csXyzFv@ha
/* 809BAEE0  38 84 B0 D0 */	addi r4, r4, __dt__5csXyzFv@l
/* 809BAEE4  38 A0 00 06 */	li r5, 6
/* 809BAEE8  38 C0 00 04 */	li r6, 4
/* 809BAEEC  4B 9A 6D FC */	b __destroy_arr
/* 809BAEF0  38 7E 0A 2C */	addi r3, r30, 0xa2c
/* 809BAEF4  3C 80 80 9C */	lis r4, __dt__5csXyzFv@ha
/* 809BAEF8  38 84 B0 D0 */	addi r4, r4, __dt__5csXyzFv@l
/* 809BAEFC  38 A0 00 06 */	li r5, 6
/* 809BAF00  38 C0 00 04 */	li r6, 4
/* 809BAF04  4B 9A 6D E4 */	b __destroy_arr
/* 809BAF08  38 7E 0A 14 */	addi r3, r30, 0xa14
/* 809BAF0C  3C 80 80 9C */	lis r4, __dt__5csXyzFv@ha
/* 809BAF10  38 84 B0 D0 */	addi r4, r4, __dt__5csXyzFv@l
/* 809BAF14  38 A0 00 06 */	li r5, 6
/* 809BAF18  38 C0 00 04 */	li r6, 4
/* 809BAF1C  4B 9A 6D CC */	b __destroy_arr
/* 809BAF20  38 7E 09 FC */	addi r3, r30, 0x9fc
/* 809BAF24  3C 80 80 9C */	lis r4, __dt__5csXyzFv@ha
/* 809BAF28  38 84 B0 D0 */	addi r4, r4, __dt__5csXyzFv@l
/* 809BAF2C  38 A0 00 06 */	li r5, 6
/* 809BAF30  38 C0 00 04 */	li r6, 4
/* 809BAF34  4B 9A 6D B4 */	b __destroy_arr
/* 809BAF38  38 7E 09 CC */	addi r3, r30, 0x9cc
/* 809BAF3C  3C 80 80 9C */	lis r4, __dt__4cXyzFv@ha
/* 809BAF40  38 84 B2 E0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809BAF44  38 A0 00 0C */	li r5, 0xc
/* 809BAF48  38 C0 00 04 */	li r6, 4
/* 809BAF4C  4B 9A 6D 9C */	b __destroy_arr
lbl_809BAF50:
/* 809BAF50  34 1E 08 8C */	addic. r0, r30, 0x88c
/* 809BAF54  41 82 00 84 */	beq lbl_809BAFD8
/* 809BAF58  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809BAF5C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809BAF60  90 7E 08 C8 */	stw r3, 0x8c8(r30)
/* 809BAF64  38 03 00 2C */	addi r0, r3, 0x2c
/* 809BAF68  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 809BAF6C  38 03 00 84 */	addi r0, r3, 0x84
/* 809BAF70  90 1E 09 C4 */	stw r0, 0x9c4(r30)
/* 809BAF74  34 1E 09 90 */	addic. r0, r30, 0x990
/* 809BAF78  41 82 00 54 */	beq lbl_809BAFCC
/* 809BAF7C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809BAF80  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809BAF84  90 7E 09 AC */	stw r3, 0x9ac(r30)
/* 809BAF88  38 03 00 58 */	addi r0, r3, 0x58
/* 809BAF8C  90 1E 09 C4 */	stw r0, 0x9c4(r30)
/* 809BAF90  34 1E 09 B0 */	addic. r0, r30, 0x9b0
/* 809BAF94  41 82 00 10 */	beq lbl_809BAFA4
/* 809BAF98  3C 60 80 9C */	lis r3, __vt__8cM3dGCyl@ha
/* 809BAF9C  38 03 B4 D8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809BAFA0  90 1E 09 C4 */	stw r0, 0x9c4(r30)
lbl_809BAFA4:
/* 809BAFA4  34 1E 09 90 */	addic. r0, r30, 0x990
/* 809BAFA8  41 82 00 24 */	beq lbl_809BAFCC
/* 809BAFAC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809BAFB0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809BAFB4  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 809BAFB8  34 1E 09 90 */	addic. r0, r30, 0x990
/* 809BAFBC  41 82 00 10 */	beq lbl_809BAFCC
/* 809BAFC0  3C 60 80 9C */	lis r3, __vt__8cM3dGAab@ha
/* 809BAFC4  38 03 B4 E4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809BAFC8  90 1E 09 A8 */	stw r0, 0x9a8(r30)
lbl_809BAFCC:
/* 809BAFCC  38 7E 08 8C */	addi r3, r30, 0x88c
/* 809BAFD0  38 80 00 00 */	li r4, 0
/* 809BAFD4  4B 6C 91 10 */	b __dt__12dCcD_GObjInfFv
lbl_809BAFD8:
/* 809BAFD8  34 1E 08 50 */	addic. r0, r30, 0x850
/* 809BAFDC  41 82 00 54 */	beq lbl_809BB030
/* 809BAFE0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809BAFE4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 809BAFE8  90 7E 08 68 */	stw r3, 0x868(r30)
/* 809BAFEC  38 03 00 20 */	addi r0, r3, 0x20
/* 809BAFF0  90 1E 08 6C */	stw r0, 0x86c(r30)
/* 809BAFF4  34 1E 08 6C */	addic. r0, r30, 0x86c
/* 809BAFF8  41 82 00 24 */	beq lbl_809BB01C
/* 809BAFFC  3C 60 80 9C */	lis r3, __vt__10dCcD_GStts@ha
/* 809BB000  38 03 B4 B4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809BB004  90 1E 08 6C */	stw r0, 0x86c(r30)
/* 809BB008  34 1E 08 6C */	addic. r0, r30, 0x86c
/* 809BB00C  41 82 00 10 */	beq lbl_809BB01C
/* 809BB010  3C 60 80 9C */	lis r3, __vt__10cCcD_GStts@ha
/* 809BB014  38 03 B4 A8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809BB018  90 1E 08 6C */	stw r0, 0x86c(r30)
lbl_809BB01C:
/* 809BB01C  34 1E 08 50 */	addic. r0, r30, 0x850
/* 809BB020  41 82 00 10 */	beq lbl_809BB030
/* 809BB024  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809BB028  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809BB02C  90 1E 08 68 */	stw r0, 0x868(r30)
lbl_809BB030:
/* 809BB030  34 1E 08 10 */	addic. r0, r30, 0x810
/* 809BB034  41 82 00 28 */	beq lbl_809BB05C
/* 809BB038  3C 60 80 9C */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809BB03C  38 03 B4 9C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809BB040  90 1E 08 1C */	stw r0, 0x81c(r30)
/* 809BB044  38 7E 08 24 */	addi r3, r30, 0x824
/* 809BB048  38 80 FF FF */	li r4, -1
/* 809BB04C  4B 8B 3E CC */	b __dt__8cM3dGCirFv
/* 809BB050  38 7E 08 10 */	addi r3, r30, 0x810
/* 809BB054  38 80 00 00 */	li r4, 0
/* 809BB058  4B 8A D0 58 */	b __dt__13cBgS_PolyInfoFv
lbl_809BB05C:
/* 809BB05C  34 1E 06 38 */	addic. r0, r30, 0x638
/* 809BB060  41 82 00 2C */	beq lbl_809BB08C
/* 809BB064  3C 60 80 9C */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 809BB068  38 63 B4 F0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 809BB06C  90 7E 06 48 */	stw r3, 0x648(r30)
/* 809BB070  38 03 00 0C */	addi r0, r3, 0xc
/* 809BB074  90 1E 06 4C */	stw r0, 0x64c(r30)
/* 809BB078  38 03 00 18 */	addi r0, r3, 0x18
/* 809BB07C  90 1E 06 5C */	stw r0, 0x65c(r30)
/* 809BB080  38 7E 06 38 */	addi r3, r30, 0x638
/* 809BB084  38 80 00 00 */	li r4, 0
/* 809BB088  4B 6B AF 0C */	b __dt__9dBgS_AcchFv
lbl_809BB08C:
/* 809BB08C  38 7E 05 94 */	addi r3, r30, 0x594
/* 809BB090  38 80 FF FF */	li r4, -1
/* 809BB094  4B 90 5B D8 */	b __dt__17Z2CreatureCitizenFv
/* 809BB098  7F C3 F3 78 */	mr r3, r30
/* 809BB09C  38 80 00 00 */	li r4, 0
/* 809BB0A0  4B 65 DB EC */	b __dt__10fopAc_ac_cFv
/* 809BB0A4  7F E0 07 35 */	extsh. r0, r31
/* 809BB0A8  40 81 00 0C */	ble lbl_809BB0B4
/* 809BB0AC  7F C3 F3 78 */	mr r3, r30
/* 809BB0B0  4B 91 3C 8C */	b __dl__FPv
lbl_809BB0B4:
/* 809BB0B4  7F C3 F3 78 */	mr r3, r30
/* 809BB0B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BB0BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BB0C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BB0C4  7C 08 03 A6 */	mtlr r0
/* 809BB0C8  38 21 00 10 */	addi r1, r1, 0x10
/* 809BB0CC  4E 80 00 20 */	blr 
