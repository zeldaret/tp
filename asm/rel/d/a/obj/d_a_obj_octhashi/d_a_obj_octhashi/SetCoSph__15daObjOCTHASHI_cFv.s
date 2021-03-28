lbl_80CA4DFC:
/* 80CA4DFC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CA4E00  7C 08 02 A6 */	mflr r0
/* 80CA4E04  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CA4E08  39 61 00 30 */	addi r11, r1, 0x30
/* 80CA4E0C  4B 6B D3 BC */	b _savegpr_24
/* 80CA4E10  7C 78 1B 78 */	mr r24, r3
/* 80CA4E14  3B 20 00 00 */	li r25, 0
/* 80CA4E18  3B E0 00 00 */	li r31, 0
/* 80CA4E1C  3B C0 00 00 */	li r30, 0
/* 80CA4E20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA4E24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA4E28  3B 83 23 3C */	addi r28, r3, 0x233c
/* 80CA4E2C  3C 60 80 CA */	lis r3, lit_3713@ha
/* 80CA4E30  3B A3 64 D8 */	addi r29, r3, lit_3713@l
/* 80CA4E34  48 00 00 4C */	b lbl_80CA4E80
lbl_80CA4E38:
/* 80CA4E38  7F 78 F2 14 */	add r27, r24, r30
/* 80CA4E3C  80 1B 09 B8 */	lwz r0, 0x9b8(r27)
/* 80CA4E40  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 80CA4E44  90 1B 09 B8 */	stw r0, 0x9b8(r27)
/* 80CA4E48  3B 5B 0A B0 */	addi r26, r27, 0xab0
/* 80CA4E4C  7F 43 D3 78 */	mr r3, r26
/* 80CA4E50  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80CA4E54  4B 5C A8 B4 */	b SetR__8cM3dGSphFf
/* 80CA4E58  7F 43 D3 78 */	mr r3, r26
/* 80CA4E5C  38 9F 05 A0 */	addi r4, r31, 0x5a0
/* 80CA4E60  7C 98 22 14 */	add r4, r24, r4
/* 80CA4E64  4B 5C A7 E4 */	b SetC__8cM3dGSphFRC4cXyz
/* 80CA4E68  7F 83 E3 78 */	mr r3, r28
/* 80CA4E6C  38 9B 09 8C */	addi r4, r27, 0x98c
/* 80CA4E70  4B 5B FD 38 */	b Set__4cCcSFP8cCcD_Obj
/* 80CA4E74  3B 39 00 01 */	addi r25, r25, 1
/* 80CA4E78  3B FF 00 0C */	addi r31, r31, 0xc
/* 80CA4E7C  3B DE 01 38 */	addi r30, r30, 0x138
lbl_80CA4E80:
/* 80CA4E80  80 18 06 E0 */	lwz r0, 0x6e0(r24)
/* 80CA4E84  7C 19 00 00 */	cmpw r25, r0
/* 80CA4E88  41 80 FF B0 */	blt lbl_80CA4E38
/* 80CA4E8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80CA4E90  4B 6B D3 84 */	b _restgpr_24
/* 80CA4E94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CA4E98  7C 08 03 A6 */	mtlr r0
/* 80CA4E9C  38 21 00 30 */	addi r1, r1, 0x30
/* 80CA4EA0  4E 80 00 20 */	blr 
