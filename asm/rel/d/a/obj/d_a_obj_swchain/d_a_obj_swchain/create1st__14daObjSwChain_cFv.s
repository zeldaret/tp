lbl_80CF8B48:
/* 80CF8B48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF8B4C  7C 08 02 A6 */	mflr r0
/* 80CF8B50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF8B54  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF8B58  4B 66 96 79 */	bl _savegpr_26
/* 80CF8B5C  7C 7F 1B 78 */	mr r31, r3
/* 80CF8B60  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CF8B64  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CF8B68  40 82 01 64 */	bne lbl_80CF8CCC
/* 80CF8B6C  7F E0 FB 79 */	or. r0, r31, r31
/* 80CF8B70  41 82 01 50 */	beq lbl_80CF8CC0
/* 80CF8B74  7C 1E 03 78 */	mr r30, r0
/* 80CF8B78  4B 31 FF ED */	bl __ct__10fopAc_ac_cFv
/* 80CF8B7C  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 80CF8B80  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 80CF8B84  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80CF8B88  38 80 00 00 */	li r4, 0
/* 80CF8B8C  90 9E 05 7C */	stw r4, 0x57c(r30)
/* 80CF8B90  90 9E 05 80 */	stw r4, 0x580(r30)
/* 80CF8B94  90 9E 05 84 */	stw r4, 0x584(r30)
/* 80CF8B98  3C 60 80 3B */	lis r3, __vt__6dMdl_c@ha /* 0x803AF978@ha */
/* 80CF8B9C  38 03 F9 78 */	addi r0, r3, __vt__6dMdl_c@l /* 0x803AF978@l */
/* 80CF8BA0  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80CF8BA4  90 9E 05 88 */	stw r4, 0x588(r30)
/* 80CF8BA8  B0 9E 05 90 */	sth r4, 0x590(r30)
/* 80CF8BAC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CF8BB0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CF8BB4  90 1E 05 B0 */	stw r0, 0x5b0(r30)
/* 80CF8BB8  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80CF8BBC  4B 38 AB A5 */	bl __ct__10dCcD_GSttsFv
/* 80CF8BC0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CF8BC4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CF8BC8  90 7E 05 B0 */	stw r3, 0x5b0(r30)
/* 80CF8BCC  38 03 00 20 */	addi r0, r3, 0x20
/* 80CF8BD0  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80CF8BD4  3B 5E 05 D4 */	addi r26, r30, 0x5d4
/* 80CF8BD8  7F 43 D3 78 */	mr r3, r26
/* 80CF8BDC  4B 38 AE 4D */	bl __ct__12dCcD_GObjInfFv
/* 80CF8BE0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CF8BE4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CF8BE8  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80CF8BEC  3C 60 80 D0 */	lis r3, __vt__8cM3dGAab@ha /* 0x80CFB89C@ha */
/* 80CF8BF0  38 03 B8 9C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CFB89C@l */
/* 80CF8BF4  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80CF8BF8  3C 60 80 D0 */	lis r3, __vt__8cM3dGSph@ha /* 0x80CFB890@ha */
/* 80CF8BFC  38 03 B8 90 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80CFB890@l */
/* 80CF8C00  90 1A 01 34 */	stw r0, 0x134(r26)
/* 80CF8C04  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80CF8C08  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80CF8C0C  90 7A 01 20 */	stw r3, 0x120(r26)
/* 80CF8C10  3B A3 00 58 */	addi r29, r3, 0x58
/* 80CF8C14  93 BA 01 34 */	stw r29, 0x134(r26)
/* 80CF8C18  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80CF8C1C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80CF8C20  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 80CF8C24  3B 83 00 2C */	addi r28, r3, 0x2c
/* 80CF8C28  93 9A 01 20 */	stw r28, 0x120(r26)
/* 80CF8C2C  3B 63 00 84 */	addi r27, r3, 0x84
/* 80CF8C30  93 7A 01 34 */	stw r27, 0x134(r26)
/* 80CF8C34  3B 5E 07 0C */	addi r26, r30, 0x70c
/* 80CF8C38  7F 43 D3 78 */	mr r3, r26
/* 80CF8C3C  4B 38 AD ED */	bl __ct__12dCcD_GObjInfFv
/* 80CF8C40  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CF8C44  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CF8C48  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80CF8C4C  3C 60 80 D0 */	lis r3, __vt__8cM3dGAab@ha /* 0x80CFB89C@ha */
/* 80CF8C50  38 03 B8 9C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CFB89C@l */
/* 80CF8C54  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80CF8C58  3C 60 80 D0 */	lis r3, __vt__8cM3dGSph@ha /* 0x80CFB890@ha */
/* 80CF8C5C  38 03 B8 90 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80CFB890@l */
/* 80CF8C60  90 1A 01 34 */	stw r0, 0x134(r26)
/* 80CF8C64  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80CF8C68  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80CF8C6C  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80CF8C70  93 BA 01 34 */	stw r29, 0x134(r26)
/* 80CF8C74  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80CF8C78  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80CF8C7C  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 80CF8C80  93 9A 01 20 */	stw r28, 0x120(r26)
/* 80CF8C84  93 7A 01 34 */	stw r27, 0x134(r26)
/* 80CF8C88  3B 5E 08 44 */	addi r26, r30, 0x844
/* 80CF8C8C  7F 43 D3 78 */	mr r3, r26
/* 80CF8C90  4B 37 D4 11 */	bl __ct__9dBgS_AcchFv
/* 80CF8C94  3C 60 80 D0 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80CFB86C@ha */
/* 80CF8C98  38 63 B8 6C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80CFB86C@l */
/* 80CF8C9C  90 7A 00 10 */	stw r3, 0x10(r26)
/* 80CF8CA0  38 03 00 0C */	addi r0, r3, 0xc
/* 80CF8CA4  90 1A 00 14 */	stw r0, 0x14(r26)
/* 80CF8CA8  38 03 00 18 */	addi r0, r3, 0x18
/* 80CF8CAC  90 1A 00 24 */	stw r0, 0x24(r26)
/* 80CF8CB0  38 7A 00 14 */	addi r3, r26, 0x14
/* 80CF8CB4  4B 38 01 B5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80CF8CB8  38 7E 0A 1C */	addi r3, r30, 0xa1c
/* 80CF8CBC  4B 37 D1 F1 */	bl __ct__12dBgS_AcchCirFv
lbl_80CF8CC0:
/* 80CF8CC0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CF8CC4  60 00 00 08 */	ori r0, r0, 8
/* 80CF8CC8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CF8CCC:
/* 80CF8CCC  88 1F 0A 60 */	lbz r0, 0xa60(r31)
/* 80CF8CD0  28 00 00 00 */	cmplwi r0, 0
/* 80CF8CD4  40 82 00 38 */	bne lbl_80CF8D0C
/* 80CF8CD8  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80CF8CDC  B0 1F 0A 5C */	sth r0, 0xa5c(r31)
/* 80CF8CE0  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80CF8CE4  B0 1F 0A 5E */	sth r0, 0xa5e(r31)
/* 80CF8CE8  38 00 00 00 */	li r0, 0
/* 80CF8CEC  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 80CF8CF0  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80CF8CF4  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80CF8CF8  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80CF8CFC  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80CF8D00  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80CF8D04  38 00 00 01 */	li r0, 1
/* 80CF8D08  98 1F 0A 60 */	stb r0, 0xa60(r31)
lbl_80CF8D0C:
/* 80CF8D0C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF8D10  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CF8D14  54 83 0F FE */	srwi r3, r4, 0x1f
/* 80CF8D18  54 00 C7 FE */	rlwinm r0, r0, 0x18, 0x1f, 0x1f
/* 80CF8D1C  7C 00 1A 78 */	xor r0, r0, r3
/* 80CF8D20  7C 03 00 51 */	subf. r0, r3, r0
/* 80CF8D24  38 04 00 01 */	addi r0, r4, 1
/* 80CF8D28  41 82 00 08 */	beq lbl_80CF8D30
/* 80CF8D2C  7C 80 23 78 */	mr r0, r4
lbl_80CF8D30:
/* 80CF8D30  98 1F 0A 65 */	stb r0, 0xa65(r31)
/* 80CF8D34  A0 1F 0A 5C */	lhz r0, 0xa5c(r31)
/* 80CF8D38  98 1F 0A 66 */	stb r0, 0xa66(r31)
/* 80CF8D3C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF8D40  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80CF8D44  98 1F 0A 64 */	stb r0, 0xa64(r31)
/* 80CF8D48  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF8D4C  54 00 27 3E */	srwi r0, r0, 0x1c
/* 80CF8D50  98 1F 0A 63 */	stb r0, 0xa63(r31)
/* 80CF8D54  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CF8D58  3C 80 80 D0 */	lis r4, l_arcName@ha /* 0x80CFB798@ha */
/* 80CF8D5C  38 84 B7 98 */	addi r4, r4, l_arcName@l /* 0x80CFB798@l */
/* 80CF8D60  80 84 00 00 */	lwz r4, 0(r4)
/* 80CF8D64  4B 33 41 59 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CF8D68  7C 7B 1B 78 */	mr r27, r3
/* 80CF8D6C  2C 1B 00 04 */	cmpwi r27, 4
/* 80CF8D70  40 82 00 44 */	bne lbl_80CF8DB4
/* 80CF8D74  7F E3 FB 78 */	mr r3, r31
/* 80CF8D78  3C 80 80 D0 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha /* 0x80CF86B8@ha */
/* 80CF8D7C  38 84 86 B8 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l /* 0x80CF86B8@l */
/* 80CF8D80  3C A0 80 00 */	lis r5, 0x8000 /* 0x80004000@ha */
/* 80CF8D84  38 A5 40 00 */	addi r5, r5, 0x4000 /* 0x80004000@l */
/* 80CF8D88  4B 32 17 29 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CF8D8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CF8D90  40 82 00 0C */	bne lbl_80CF8D9C
/* 80CF8D94  38 60 00 05 */	li r3, 5
/* 80CF8D98  48 00 00 20 */	b lbl_80CF8DB8
lbl_80CF8D9C:
/* 80CF8D9C  7F E3 FB 78 */	mr r3, r31
/* 80CF8DA0  4B FF F9 C9 */	bl Create__14daObjSwChain_cFv
/* 80CF8DA4  2C 03 00 00 */	cmpwi r3, 0
/* 80CF8DA8  40 82 00 0C */	bne lbl_80CF8DB4
/* 80CF8DAC  38 60 00 05 */	li r3, 5
/* 80CF8DB0  48 00 00 08 */	b lbl_80CF8DB8
lbl_80CF8DB4:
/* 80CF8DB4  7F 63 DB 78 */	mr r3, r27
lbl_80CF8DB8:
/* 80CF8DB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF8DBC  4B 66 94 61 */	bl _restgpr_26
/* 80CF8DC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF8DC4  7C 08 03 A6 */	mtlr r0
/* 80CF8DC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF8DCC  4E 80 00 20 */	blr 
