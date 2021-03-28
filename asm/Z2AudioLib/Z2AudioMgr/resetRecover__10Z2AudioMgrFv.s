lbl_802CD9CC:
/* 802CD9CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CD9D0  7C 08 02 A6 */	mflr r0
/* 802CD9D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CD9D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CD9DC  7C 7F 1B 78 */	mr r31, r3
/* 802CD9E0  38 7F 05 1C */	addi r3, r31, 0x51c
/* 802CD9E4  4B FC F7 F1 */	bl resume__15JASAudioReseterFv
/* 802CD9E8  38 7F 05 30 */	addi r3, r31, 0x530
/* 802CD9EC  4B FD CF 1D */	bl initParams__10Z2SoundMgrFv
/* 802CD9F0  38 00 00 00 */	li r0, 0
/* 802CD9F4  98 1F 05 18 */	stb r0, 0x518(r31)
/* 802CD9F8  C0 02 C5 5C */	lfs f0, lit_3932(r2)
/* 802CD9FC  D0 1F 04 84 */	stfs f0, 0x484(r31)
/* 802CDA00  D0 1F 04 64 */	stfs f0, 0x464(r31)
/* 802CDA04  C0 02 C5 60 */	lfs f0, lit_4035(r2)
/* 802CDA08  D0 1F 04 68 */	stfs f0, 0x468(r31)
/* 802CDA0C  90 1F 04 70 */	stw r0, 0x470(r31)
/* 802CDA10  D0 1F 04 6C */	stfs f0, 0x46c(r31)
/* 802CDA14  38 7F 04 C4 */	addi r3, r31, 0x4c4
/* 802CDA18  4B FE 87 65 */	bl menuOut__11Z2StatusMgrFv
/* 802CDA1C  C0 22 C5 5C */	lfs f1, lit_3932(r2)
/* 802CDA20  D0 3F 04 44 */	stfs f1, 0x444(r31)
/* 802CDA24  C0 02 C5 60 */	lfs f0, lit_4035(r2)
/* 802CDA28  D0 1F 04 48 */	stfs f0, 0x448(r31)
/* 802CDA2C  38 00 00 00 */	li r0, 0
/* 802CDA30  90 1F 04 50 */	stw r0, 0x450(r31)
/* 802CDA34  D0 1F 04 4C */	stfs f0, 0x44c(r31)
/* 802CDA38  D0 3F 04 04 */	stfs f1, 0x404(r31)
/* 802CDA3C  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 802CDA40  90 1F 04 10 */	stw r0, 0x410(r31)
/* 802CDA44  D0 1F 04 0C */	stfs f0, 0x40c(r31)
/* 802CDA48  D0 3F 04 14 */	stfs f1, 0x414(r31)
/* 802CDA4C  D0 1F 04 18 */	stfs f0, 0x418(r31)
/* 802CDA50  90 1F 04 20 */	stw r0, 0x420(r31)
/* 802CDA54  D0 1F 04 1C */	stfs f0, 0x41c(r31)
/* 802CDA58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CDA5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CDA60  7C 08 03 A6 */	mtlr r0
/* 802CDA64  38 21 00 10 */	addi r1, r1, 0x10
/* 802CDA68  4E 80 00 20 */	blr 
