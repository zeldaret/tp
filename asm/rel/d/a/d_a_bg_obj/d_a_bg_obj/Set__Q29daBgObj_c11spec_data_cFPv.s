lbl_80459904:
/* 80459904  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80459908  7C 08 02 A6 */	mflr r0
/* 8045990C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80459910  39 61 00 20 */	addi r11, r1, 0x20
/* 80459914  4B F0 88 C8 */	b _savegpr_29
/* 80459918  7C 7F 1B 78 */	mr r31, r3
/* 8045991C  A0 04 00 00 */	lhz r0, 0(r4)
/* 80459920  B0 03 00 00 */	sth r0, 0(r3)
/* 80459924  A0 03 00 00 */	lhz r0, 0(r3)
/* 80459928  2C 00 00 01 */	cmpwi r0, 1
/* 8045992C  41 82 00 84 */	beq lbl_804599B0
/* 80459930  40 80 00 10 */	bge lbl_80459940
/* 80459934  2C 00 00 00 */	cmpwi r0, 0
/* 80459938  40 80 00 14 */	bge lbl_8045994C
/* 8045993C  48 00 02 04 */	b lbl_80459B40
lbl_80459940:
/* 80459940  2C 00 00 03 */	cmpwi r0, 3
/* 80459944  40 80 01 FC */	bge lbl_80459B40
/* 80459948  48 00 01 24 */	b lbl_80459A6C
lbl_8045994C:
/* 8045994C  8B C4 00 04 */	lbz r30, 4(r4)
/* 80459950  3B A4 00 04 */	addi r29, r4, 4
lbl_80459954:
/* 80459954  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80459958  2C 00 00 03 */	cmpwi r0, 3
/* 8045995C  41 82 00 20 */	beq lbl_8045997C
/* 80459960  40 80 00 10 */	bge lbl_80459970
/* 80459964  2C 00 00 00 */	cmpwi r0, 0
/* 80459968  41 82 00 38 */	beq lbl_804599A0
/* 8045996C  48 00 00 34 */	b lbl_804599A0
lbl_80459970:
/* 80459970  2C 00 00 05 */	cmpwi r0, 5
/* 80459974  40 80 00 2C */	bge lbl_804599A0
/* 80459978  48 00 00 18 */	b lbl_80459990
lbl_8045997C:
/* 8045997C  7F E3 FB 78 */	mr r3, r31
/* 80459980  7F A4 EB 78 */	mr r4, r29
/* 80459984  4B FF FE BD */	bl initTexShareBlock__Q29daBgObj_c11spec_data_cFPUc
/* 80459988  7C 7D 1B 78 */	mr r29, r3
/* 8045998C  48 00 00 14 */	b lbl_804599A0
lbl_80459990:
/* 80459990  7F E3 FB 78 */	mr r3, r31
/* 80459994  7F A4 EB 78 */	mr r4, r29
/* 80459998  4B FF FF 5D */	bl initFarInfoBlock__Q29daBgObj_c11spec_data_cFPUc
/* 8045999C  7C 7D 1B 78 */	mr r29, r3
lbl_804599A0:
/* 804599A0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 804599A4  41 82 01 A4 */	beq lbl_80459B48
/* 804599A8  8B DD 00 00 */	lbz r30, 0(r29)
/* 804599AC  4B FF FF A8 */	b lbl_80459954
lbl_804599B0:
/* 804599B0  A0 64 00 02 */	lhz r3, 2(r4)
/* 804599B4  54 60 07 3E */	clrlwi r0, r3, 0x1c
/* 804599B8  98 1F 00 02 */	stb r0, 2(r31)
/* 804599BC  54 60 97 BE */	rlwinm r0, r3, 0x12, 0x1e, 0x1f
/* 804599C0  98 1F 00 03 */	stb r0, 3(r31)
/* 804599C4  54 60 A7 BE */	rlwinm r0, r3, 0x14, 0x1e, 0x1f
/* 804599C8  98 1F 00 15 */	stb r0, 0x15(r31)
/* 804599CC  54 60 BF 7E */	rlwinm r0, r3, 0x17, 0x1d, 0x1f
/* 804599D0  98 1F 00 14 */	stb r0, 0x14(r31)
/* 804599D4  54 60 C7 FE */	rlwinm r0, r3, 0x18, 0x1f, 0x1f
/* 804599D8  98 1F 00 16 */	stb r0, 0x16(r31)
/* 804599DC  8B C4 00 04 */	lbz r30, 4(r4)
/* 804599E0  3B A4 00 04 */	addi r29, r4, 4
lbl_804599E4:
/* 804599E4  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 804599E8  2C 00 00 02 */	cmpwi r0, 2
/* 804599EC  41 82 00 4C */	beq lbl_80459A38
/* 804599F0  40 80 00 14 */	bge lbl_80459A04
/* 804599F4  2C 00 00 00 */	cmpwi r0, 0
/* 804599F8  41 82 00 64 */	beq lbl_80459A5C
/* 804599FC  40 80 00 28 */	bge lbl_80459A24
/* 80459A00  48 00 00 5C */	b lbl_80459A5C
lbl_80459A04:
/* 80459A04  2C 00 00 04 */	cmpwi r0, 4
/* 80459A08  41 82 00 44 */	beq lbl_80459A4C
/* 80459A0C  40 80 00 50 */	bge lbl_80459A5C
/* 80459A10  7F E3 FB 78 */	mr r3, r31
/* 80459A14  7F A4 EB 78 */	mr r4, r29
/* 80459A18  4B FF FE 29 */	bl initTexShareBlock__Q29daBgObj_c11spec_data_cFPUc
/* 80459A1C  7C 7D 1B 78 */	mr r29, r3
/* 80459A20  48 00 00 3C */	b lbl_80459A5C
lbl_80459A24:
/* 80459A24  7F E3 FB 78 */	mr r3, r31
/* 80459A28  7F A4 EB 78 */	mr r4, r29
/* 80459A2C  4B FF FD BD */	bl initParticleBlock__Q29daBgObj_c11spec_data_cFPUc
/* 80459A30  7C 7D 1B 78 */	mr r29, r3
/* 80459A34  48 00 00 28 */	b lbl_80459A5C
lbl_80459A38:
/* 80459A38  7F E3 FB 78 */	mr r3, r31
/* 80459A3C  7F A4 EB 78 */	mr r4, r29
/* 80459A40  4B FF FD D5 */	bl initSoundBlock__Q29daBgObj_c11spec_data_cFPUc
/* 80459A44  7C 7D 1B 78 */	mr r29, r3
/* 80459A48  48 00 00 14 */	b lbl_80459A5C
lbl_80459A4C:
/* 80459A4C  7F E3 FB 78 */	mr r3, r31
/* 80459A50  7F A4 EB 78 */	mr r4, r29
/* 80459A54  4B FF FE A1 */	bl initFarInfoBlock__Q29daBgObj_c11spec_data_cFPUc
/* 80459A58  7C 7D 1B 78 */	mr r29, r3
lbl_80459A5C:
/* 80459A5C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80459A60  41 82 00 E8 */	beq lbl_80459B48
/* 80459A64  8B DD 00 00 */	lbz r30, 0(r29)
/* 80459A68  4B FF FF 7C */	b lbl_804599E4
lbl_80459A6C:
/* 80459A6C  A0 64 00 02 */	lhz r3, 2(r4)
/* 80459A70  54 60 07 3E */	clrlwi r0, r3, 0x1c
/* 80459A74  98 1F 00 02 */	stb r0, 2(r31)
/* 80459A78  54 60 97 BE */	rlwinm r0, r3, 0x12, 0x1e, 0x1f
/* 80459A7C  98 1F 00 03 */	stb r0, 3(r31)
/* 80459A80  54 60 A7 BE */	rlwinm r0, r3, 0x14, 0x1e, 0x1f
/* 80459A84  98 1F 00 15 */	stb r0, 0x15(r31)
/* 80459A88  54 60 BF 7E */	rlwinm r0, r3, 0x17, 0x1d, 0x1f
/* 80459A8C  98 1F 00 14 */	stb r0, 0x14(r31)
/* 80459A90  54 60 C7 FE */	rlwinm r0, r3, 0x18, 0x1f, 0x1f
/* 80459A94  98 1F 00 16 */	stb r0, 0x16(r31)
/* 80459A98  8B C4 00 04 */	lbz r30, 4(r4)
/* 80459A9C  3B A4 00 04 */	addi r29, r4, 4
lbl_80459AA0:
/* 80459AA0  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 80459AA4  2C 04 00 02 */	cmpwi r4, 2
/* 80459AA8  41 82 00 4C */	beq lbl_80459AF4
/* 80459AAC  40 80 00 14 */	bge lbl_80459AC0
/* 80459AB0  2C 04 00 00 */	cmpwi r4, 0
/* 80459AB4  41 82 00 7C */	beq lbl_80459B30
/* 80459AB8  40 80 00 28 */	bge lbl_80459AE0
/* 80459ABC  48 00 00 60 */	b lbl_80459B1C
lbl_80459AC0:
/* 80459AC0  2C 04 00 04 */	cmpwi r4, 4
/* 80459AC4  41 82 00 44 */	beq lbl_80459B08
/* 80459AC8  40 80 00 54 */	bge lbl_80459B1C
/* 80459ACC  7F E3 FB 78 */	mr r3, r31
/* 80459AD0  7F A4 EB 78 */	mr r4, r29
/* 80459AD4  4B FF FD 6D */	bl initTexShareBlock__Q29daBgObj_c11spec_data_cFPUc
/* 80459AD8  7C 7D 1B 78 */	mr r29, r3
/* 80459ADC  48 00 00 54 */	b lbl_80459B30
lbl_80459AE0:
/* 80459AE0  7F E3 FB 78 */	mr r3, r31
/* 80459AE4  7F A4 EB 78 */	mr r4, r29
/* 80459AE8  4B FF FD 01 */	bl initParticleBlock__Q29daBgObj_c11spec_data_cFPUc
/* 80459AEC  7C 7D 1B 78 */	mr r29, r3
/* 80459AF0  48 00 00 40 */	b lbl_80459B30
lbl_80459AF4:
/* 80459AF4  7F E3 FB 78 */	mr r3, r31
/* 80459AF8  7F A4 EB 78 */	mr r4, r29
/* 80459AFC  4B FF FD 19 */	bl initSoundBlock__Q29daBgObj_c11spec_data_cFPUc
/* 80459B00  7C 7D 1B 78 */	mr r29, r3
/* 80459B04  48 00 00 2C */	b lbl_80459B30
lbl_80459B08:
/* 80459B08  7F E3 FB 78 */	mr r3, r31
/* 80459B0C  7F A4 EB 78 */	mr r4, r29
/* 80459B10  4B FF FD E5 */	bl initFarInfoBlock__Q29daBgObj_c11spec_data_cFPUc
/* 80459B14  7C 7D 1B 78 */	mr r29, r3
/* 80459B18  48 00 00 18 */	b lbl_80459B30
lbl_80459B1C:
/* 80459B1C  3C 60 80 46 */	lis r3, struct_8045CA20+0x0@ha
/* 80459B20  38 63 CA 20 */	addi r3, r3, struct_8045CA20+0x0@l
/* 80459B24  38 63 00 66 */	addi r3, r3, 0x66
/* 80459B28  4C C6 31 82 */	crclr 6
/* 80459B2C  4B BA D0 E0 */	b OSReport_Error
lbl_80459B30:
/* 80459B30  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80459B34  41 82 00 14 */	beq lbl_80459B48
/* 80459B38  8B DD 00 00 */	lbz r30, 0(r29)
/* 80459B3C  4B FF FF 64 */	b lbl_80459AA0
lbl_80459B40:
/* 80459B40  38 60 00 00 */	li r3, 0
/* 80459B44  48 00 00 08 */	b lbl_80459B4C
lbl_80459B48:
/* 80459B48  38 60 00 01 */	li r3, 1
lbl_80459B4C:
/* 80459B4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80459B50  4B F0 86 D8 */	b _restgpr_29
/* 80459B54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80459B58  7C 08 03 A6 */	mtlr r0
/* 80459B5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80459B60  4E 80 00 20 */	blr 
