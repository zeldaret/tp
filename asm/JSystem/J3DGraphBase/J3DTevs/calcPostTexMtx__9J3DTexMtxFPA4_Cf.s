lbl_80323C0C:
/* 80323C0C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80323C10  7C 08 02 A6 */	mflr r0
/* 80323C14  90 01 00 94 */	stw r0, 0x94(r1)
/* 80323C18  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80323C1C  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80323C20  7C 7F 1B 78 */	mr r31, r3
/* 80323C24  7C 9E 23 78 */	mr r30, r4
/* 80323C28  88 03 00 01 */	lbz r0, 1(r3)
/* 80323C2C  54 04 CF FE */	rlwinm r4, r0, 0x19, 0x1f, 0x1f
/* 80323C30  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 80323C34  28 00 00 0B */	cmplwi r0, 0xb
/* 80323C38  41 81 02 E4 */	bgt lbl_80323F1C
/* 80323C3C  3C 60 80 3D */	lis r3, lit_1131@ha /* 0x803CEBB8@ha */
/* 80323C40  38 63 EB B8 */	addi r3, r3, lit_1131@l /* 0x803CEBB8@l */
/* 80323C44  54 00 10 3A */	slwi r0, r0, 2
/* 80323C48  7C 03 00 2E */	lwzx r0, r3, r0
/* 80323C4C  7C 09 03 A6 */	mtctr r0
/* 80323C50  4E 80 04 20 */	bctr 
/* 80323C54  28 04 00 00 */	cmplwi r4, 0
/* 80323C58  40 82 00 18 */	bne lbl_80323C70
/* 80323C5C  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323C60  38 9F 00 04 */	addi r4, r31, 4
/* 80323C64  38 A1 00 08 */	addi r5, r1, 8
/* 80323C68  4B FE DE 65 */	bl J3DGetTextureMtx__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80323C6C  48 00 00 18 */	b lbl_80323C84
lbl_80323C70:
/* 80323C70  28 04 00 01 */	cmplwi r4, 1
/* 80323C74  40 82 00 10 */	bne lbl_80323C84
/* 80323C78  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323C7C  38 81 00 08 */	addi r4, r1, 8
/* 80323C80  4B FE DF B5 */	bl J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f
lbl_80323C84:
/* 80323C84  38 61 00 08 */	addi r3, r1, 8
/* 80323C88  3C 80 80 3D */	lis r4, qMtx_1063@ha /* 0x803CEB58@ha */
/* 80323C8C  38 84 EB 58 */	addi r4, r4, qMtx_1063@l /* 0x803CEB58@l */
/* 80323C90  7C 65 1B 78 */	mr r5, r3
/* 80323C94  48 02 28 51 */	bl PSMTXConcat
/* 80323C98  38 61 00 08 */	addi r3, r1, 8
/* 80323C9C  38 9F 00 24 */	addi r4, r31, 0x24
/* 80323CA0  38 A1 00 48 */	addi r5, r1, 0x48
/* 80323CA4  4B FE E1 A9 */	bl J3DMtxProjConcat__FPA4_fPA4_fPA4_f
/* 80323CA8  38 61 00 48 */	addi r3, r1, 0x48
/* 80323CAC  7F C4 F3 78 */	mr r4, r30
/* 80323CB0  38 BF 00 64 */	addi r5, r31, 0x64
/* 80323CB4  48 02 28 31 */	bl PSMTXConcat
/* 80323CB8  48 00 02 94 */	b lbl_80323F4C
/* 80323CBC  28 04 00 00 */	cmplwi r4, 0
/* 80323CC0  40 82 00 18 */	bne lbl_80323CD8
/* 80323CC4  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323CC8  38 9F 00 04 */	addi r4, r31, 4
/* 80323CCC  38 A1 00 08 */	addi r5, r1, 8
/* 80323CD0  4B FE DD FD */	bl J3DGetTextureMtx__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80323CD4  48 00 00 18 */	b lbl_80323CEC
lbl_80323CD8:
/* 80323CD8  28 04 00 01 */	cmplwi r4, 1
/* 80323CDC  40 82 00 10 */	bne lbl_80323CEC
/* 80323CE0  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323CE4  38 81 00 08 */	addi r4, r1, 8
/* 80323CE8  4B FE DF 4D */	bl J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f
lbl_80323CEC:
/* 80323CEC  38 61 00 08 */	addi r3, r1, 8
/* 80323CF0  3C 80 80 3D */	lis r4, qMtx_1063@ha /* 0x803CEB58@ha */
/* 80323CF4  38 84 EB 58 */	addi r4, r4, qMtx_1063@l /* 0x803CEB58@l */
/* 80323CF8  7C 65 1B 78 */	mr r5, r3
/* 80323CFC  48 02 27 E9 */	bl PSMTXConcat
/* 80323D00  38 61 00 08 */	addi r3, r1, 8
/* 80323D04  38 9F 00 24 */	addi r4, r31, 0x24
/* 80323D08  38 BF 00 64 */	addi r5, r31, 0x64
/* 80323D0C  4B FE E1 41 */	bl J3DMtxProjConcat__FPA4_fPA4_fPA4_f
/* 80323D10  48 00 02 3C */	b lbl_80323F4C
/* 80323D14  28 04 00 00 */	cmplwi r4, 0
/* 80323D18  40 82 00 18 */	bne lbl_80323D30
/* 80323D1C  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323D20  38 9F 00 04 */	addi r4, r31, 4
/* 80323D24  38 A1 00 48 */	addi r5, r1, 0x48
/* 80323D28  4B FE DD A5 */	bl J3DGetTextureMtx__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80323D2C  48 00 00 18 */	b lbl_80323D44
lbl_80323D30:
/* 80323D30  28 04 00 01 */	cmplwi r4, 1
/* 80323D34  40 82 00 10 */	bne lbl_80323D44
/* 80323D38  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323D3C  38 81 00 48 */	addi r4, r1, 0x48
/* 80323D40  4B FE DE F5 */	bl J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f
lbl_80323D44:
/* 80323D44  38 61 00 48 */	addi r3, r1, 0x48
/* 80323D48  3C 80 80 3D */	lis r4, qMtx_1063@ha /* 0x803CEB58@ha */
/* 80323D4C  38 84 EB 58 */	addi r4, r4, qMtx_1063@l /* 0x803CEB58@l */
/* 80323D50  38 BF 00 64 */	addi r5, r31, 0x64
/* 80323D54  48 02 27 91 */	bl PSMTXConcat
/* 80323D58  48 00 01 F4 */	b lbl_80323F4C
/* 80323D5C  28 04 00 00 */	cmplwi r4, 0
/* 80323D60  40 82 00 18 */	bne lbl_80323D78
/* 80323D64  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323D68  38 9F 00 04 */	addi r4, r31, 4
/* 80323D6C  38 A1 00 08 */	addi r5, r1, 8
/* 80323D70  4B FE DE 11 */	bl J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80323D74  48 00 00 18 */	b lbl_80323D8C
lbl_80323D78:
/* 80323D78  28 04 00 01 */	cmplwi r4, 1
/* 80323D7C  40 82 00 10 */	bne lbl_80323D8C
/* 80323D80  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323D84  38 81 00 08 */	addi r4, r1, 8
/* 80323D88  4B FE DF 5D */	bl J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
lbl_80323D8C:
/* 80323D8C  38 61 00 08 */	addi r3, r1, 8
/* 80323D90  3C 80 80 3D */	lis r4, qMtx2_1064@ha /* 0x803CEB88@ha */
/* 80323D94  38 84 EB 88 */	addi r4, r4, qMtx2_1064@l /* 0x803CEB88@l */
/* 80323D98  7C 65 1B 78 */	mr r5, r3
/* 80323D9C  48 02 27 49 */	bl PSMTXConcat
/* 80323DA0  38 61 00 08 */	addi r3, r1, 8
/* 80323DA4  38 9F 00 24 */	addi r4, r31, 0x24
/* 80323DA8  38 A1 00 48 */	addi r5, r1, 0x48
/* 80323DAC  4B FE E0 A1 */	bl J3DMtxProjConcat__FPA4_fPA4_fPA4_f
/* 80323DB0  38 61 00 48 */	addi r3, r1, 0x48
/* 80323DB4  7F C4 F3 78 */	mr r4, r30
/* 80323DB8  38 BF 00 64 */	addi r5, r31, 0x64
/* 80323DBC  48 02 27 29 */	bl PSMTXConcat
/* 80323DC0  48 00 01 8C */	b lbl_80323F4C
/* 80323DC4  28 04 00 00 */	cmplwi r4, 0
/* 80323DC8  40 82 00 18 */	bne lbl_80323DE0
/* 80323DCC  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323DD0  38 9F 00 04 */	addi r4, r31, 4
/* 80323DD4  38 A1 00 48 */	addi r5, r1, 0x48
/* 80323DD8  4B FE DD A9 */	bl J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80323DDC  48 00 00 18 */	b lbl_80323DF4
lbl_80323DE0:
/* 80323DE0  28 04 00 01 */	cmplwi r4, 1
/* 80323DE4  40 82 00 10 */	bne lbl_80323DF4
/* 80323DE8  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323DEC  38 81 00 48 */	addi r4, r1, 0x48
/* 80323DF0  4B FE DE F5 */	bl J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
lbl_80323DF4:
/* 80323DF4  38 61 00 48 */	addi r3, r1, 0x48
/* 80323DF8  3C 80 80 3D */	lis r4, qMtx2_1064@ha /* 0x803CEB88@ha */
/* 80323DFC  38 84 EB 88 */	addi r4, r4, qMtx2_1064@l /* 0x803CEB88@l */
/* 80323E00  38 BF 00 64 */	addi r5, r31, 0x64
/* 80323E04  48 02 26 E1 */	bl PSMTXConcat
/* 80323E08  48 00 01 44 */	b lbl_80323F4C
/* 80323E0C  28 04 00 00 */	cmplwi r4, 0
/* 80323E10  40 82 00 18 */	bne lbl_80323E28
/* 80323E14  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323E18  38 9F 00 04 */	addi r4, r31, 4
/* 80323E1C  38 BF 00 64 */	addi r5, r31, 0x64
/* 80323E20  4B FE DD 61 */	bl J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80323E24  48 00 01 28 */	b lbl_80323F4C
lbl_80323E28:
/* 80323E28  28 04 00 01 */	cmplwi r4, 1
/* 80323E2C  40 82 01 20 */	bne lbl_80323F4C
/* 80323E30  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323E34  38 9F 00 64 */	addi r4, r31, 0x64
/* 80323E38  4B FE DE AD */	bl J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
/* 80323E3C  48 00 01 10 */	b lbl_80323F4C
/* 80323E40  28 04 00 00 */	cmplwi r4, 0
/* 80323E44  40 82 00 18 */	bne lbl_80323E5C
/* 80323E48  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323E4C  38 9F 00 04 */	addi r4, r31, 4
/* 80323E50  38 A1 00 08 */	addi r5, r1, 8
/* 80323E54  4B FE DD 2D */	bl J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80323E58  48 00 00 18 */	b lbl_80323E70
lbl_80323E5C:
/* 80323E5C  28 04 00 01 */	cmplwi r4, 1
/* 80323E60  40 82 00 10 */	bne lbl_80323E70
/* 80323E64  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323E68  38 81 00 08 */	addi r4, r1, 8
/* 80323E6C  4B FE DE 79 */	bl J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
lbl_80323E70:
/* 80323E70  38 61 00 08 */	addi r3, r1, 8
/* 80323E74  38 9F 00 24 */	addi r4, r31, 0x24
/* 80323E78  38 A1 00 48 */	addi r5, r1, 0x48
/* 80323E7C  4B FE DF D1 */	bl J3DMtxProjConcat__FPA4_fPA4_fPA4_f
/* 80323E80  38 61 00 48 */	addi r3, r1, 0x48
/* 80323E84  7F C4 F3 78 */	mr r4, r30
/* 80323E88  38 BF 00 64 */	addi r5, r31, 0x64
/* 80323E8C  48 02 26 59 */	bl PSMTXConcat
/* 80323E90  48 00 00 BC */	b lbl_80323F4C
/* 80323E94  28 04 00 00 */	cmplwi r4, 0
/* 80323E98  40 82 00 18 */	bne lbl_80323EB0
/* 80323E9C  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323EA0  38 9F 00 04 */	addi r4, r31, 4
/* 80323EA4  38 A1 00 08 */	addi r5, r1, 8
/* 80323EA8  4B FE DC D9 */	bl J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80323EAC  48 00 00 18 */	b lbl_80323EC4
lbl_80323EB0:
/* 80323EB0  28 04 00 01 */	cmplwi r4, 1
/* 80323EB4  40 82 00 10 */	bne lbl_80323EC4
/* 80323EB8  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323EBC  38 81 00 08 */	addi r4, r1, 8
/* 80323EC0  4B FE DE 25 */	bl J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
lbl_80323EC4:
/* 80323EC4  38 61 00 08 */	addi r3, r1, 8
/* 80323EC8  38 9F 00 24 */	addi r4, r31, 0x24
/* 80323ECC  38 BF 00 64 */	addi r5, r31, 0x64
/* 80323ED0  4B FE DF 7D */	bl J3DMtxProjConcat__FPA4_fPA4_fPA4_f
/* 80323ED4  48 00 00 78 */	b lbl_80323F4C
/* 80323ED8  28 04 00 00 */	cmplwi r4, 0
/* 80323EDC  40 82 00 18 */	bne lbl_80323EF4
/* 80323EE0  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323EE4  38 9F 00 04 */	addi r4, r31, 4
/* 80323EE8  38 A1 00 08 */	addi r5, r1, 8
/* 80323EEC  4B FE DC 95 */	bl J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80323EF0  48 00 00 18 */	b lbl_80323F08
lbl_80323EF4:
/* 80323EF4  28 04 00 01 */	cmplwi r4, 1
/* 80323EF8  40 82 00 10 */	bne lbl_80323F08
/* 80323EFC  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323F00  38 81 00 08 */	addi r4, r1, 8
/* 80323F04  4B FE DD E1 */	bl J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
lbl_80323F08:
/* 80323F08  38 61 00 08 */	addi r3, r1, 8
/* 80323F0C  38 9F 00 24 */	addi r4, r31, 0x24
/* 80323F10  38 BF 00 64 */	addi r5, r31, 0x64
/* 80323F14  4B FE DF 39 */	bl J3DMtxProjConcat__FPA4_fPA4_fPA4_f
/* 80323F18  48 00 00 34 */	b lbl_80323F4C
lbl_80323F1C:
/* 80323F1C  28 04 00 00 */	cmplwi r4, 0
/* 80323F20  40 82 00 18 */	bne lbl_80323F38
/* 80323F24  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323F28  38 9F 00 04 */	addi r4, r31, 4
/* 80323F2C  38 BF 00 64 */	addi r5, r31, 0x64
/* 80323F30  4B FE DC 51 */	bl J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80323F34  48 00 00 18 */	b lbl_80323F4C
lbl_80323F38:
/* 80323F38  28 04 00 01 */	cmplwi r4, 1
/* 80323F3C  40 82 00 10 */	bne lbl_80323F4C
/* 80323F40  38 7F 00 10 */	addi r3, r31, 0x10
/* 80323F44  38 9F 00 64 */	addi r4, r31, 0x64
/* 80323F48  4B FE DD 9D */	bl J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
lbl_80323F4C:
/* 80323F4C  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80323F50  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80323F54  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80323F58  7C 08 03 A6 */	mtlr r0
/* 80323F5C  38 21 00 90 */	addi r1, r1, 0x90
/* 80323F60  4E 80 00 20 */	blr 
