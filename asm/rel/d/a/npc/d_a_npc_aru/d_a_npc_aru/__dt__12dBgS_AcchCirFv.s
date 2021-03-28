lbl_80956E24:
/* 80956E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80956E28  7C 08 02 A6 */	mflr r0
/* 80956E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80956E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80956E34  93 C1 00 08 */	stw r30, 8(r1)
/* 80956E38  7C 7E 1B 79 */	or. r30, r3, r3
/* 80956E3C  7C 9F 23 78 */	mr r31, r4
/* 80956E40  41 82 00 38 */	beq lbl_80956E78
/* 80956E44  3C 60 80 95 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80956E48  38 03 7F E4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80956E4C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80956E50  38 7E 00 14 */	addi r3, r30, 0x14
/* 80956E54  38 80 FF FF */	li r4, -1
/* 80956E58  4B 91 80 C0 */	b __dt__8cM3dGCirFv
/* 80956E5C  7F C3 F3 78 */	mr r3, r30
/* 80956E60  38 80 00 00 */	li r4, 0
/* 80956E64  4B 91 12 4C */	b __dt__13cBgS_PolyInfoFv
/* 80956E68  7F E0 07 35 */	extsh. r0, r31
/* 80956E6C  40 81 00 0C */	ble lbl_80956E78
/* 80956E70  7F C3 F3 78 */	mr r3, r30
/* 80956E74  4B 97 7E C8 */	b __dl__FPv
lbl_80956E78:
/* 80956E78  7F C3 F3 78 */	mr r3, r30
/* 80956E7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80956E80  83 C1 00 08 */	lwz r30, 8(r1)
/* 80956E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80956E88  7C 08 03 A6 */	mtlr r0
/* 80956E8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80956E90  4E 80 00 20 */	blr 
