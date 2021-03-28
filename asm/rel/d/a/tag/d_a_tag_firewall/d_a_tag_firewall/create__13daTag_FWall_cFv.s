lbl_80D590A8:
/* 80D590A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D590AC  7C 08 02 A6 */	mflr r0
/* 80D590B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D590B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D590B8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D590BC  7C 7F 1B 78 */	mr r31, r3
/* 80D590C0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D590C4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D590C8  40 82 00 88 */	bne lbl_80D59150
/* 80D590CC  7F E0 FB 79 */	or. r0, r31, r31
/* 80D590D0  41 82 00 74 */	beq lbl_80D59144
/* 80D590D4  7C 1E 03 78 */	mr r30, r0
/* 80D590D8  4B 2B FA 8C */	b __ct__10fopAc_ac_cFv
/* 80D590DC  38 7E 06 70 */	addi r3, r30, 0x670
/* 80D590E0  3C 80 80 D6 */	lis r4, __ct__4cXyzFv@ha
/* 80D590E4  38 84 94 B0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80D590E8  3C A0 80 D6 */	lis r5, __dt__4cXyzFv@ha
/* 80D590EC  38 A5 90 1C */	addi r5, r5, __dt__4cXyzFv@l
/* 80D590F0  38 C0 00 0C */	li r6, 0xc
/* 80D590F4  38 E0 00 14 */	li r7, 0x14
/* 80D590F8  4B 60 8C 68 */	b __construct_array
/* 80D590FC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D59100  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D59104  90 1E 07 E4 */	stw r0, 0x7e4(r30)
/* 80D59108  38 7E 07 E8 */	addi r3, r30, 0x7e8
/* 80D5910C  4B 32 A6 54 */	b __ct__10dCcD_GSttsFv
/* 80D59110  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D59114  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D59118  90 7E 07 E4 */	stw r3, 0x7e4(r30)
/* 80D5911C  38 03 00 20 */	addi r0, r3, 0x20
/* 80D59120  90 1E 07 E8 */	stw r0, 0x7e8(r30)
/* 80D59124  38 7E 08 08 */	addi r3, r30, 0x808
/* 80D59128  3C 80 80 D6 */	lis r4, __ct__8dCcD_SphFv@ha
/* 80D5912C  38 84 93 9C */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80D59130  3C A0 80 D6 */	lis r5, __dt__8dCcD_SphFv@ha
/* 80D59134  38 A5 92 D0 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80D59138  38 C0 01 38 */	li r6, 0x138
/* 80D5913C  38 E0 00 14 */	li r7, 0x14
/* 80D59140  4B 60 8C 20 */	b __construct_array
lbl_80D59144:
/* 80D59144  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D59148  60 00 00 08 */	ori r0, r0, 8
/* 80D5914C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D59150:
/* 80D59150  3C 60 80 D6 */	lis r3, data_80D595C4@ha
/* 80D59154  88 03 95 C4 */	lbz r0, data_80D595C4@l(r3)
/* 80D59158  28 00 00 00 */	cmplwi r0, 0
/* 80D5915C  40 82 00 28 */	bne lbl_80D59184
/* 80D59160  38 00 00 FF */	li r0, 0xff
/* 80D59164  98 1F 05 68 */	stb r0, 0x568(r31)
/* 80D59168  3C 60 80 D6 */	lis r3, fire_leader@ha
/* 80D5916C  93 E3 95 C0 */	stw r31, fire_leader@l(r3)
/* 80D59170  38 7F 07 CC */	addi r3, r31, 0x7cc
/* 80D59174  38 80 00 FF */	li r4, 0xff
/* 80D59178  38 A0 00 00 */	li r5, 0
/* 80D5917C  7F E6 FB 78 */	mr r6, r31
/* 80D59180  4B 32 A6 E0 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
lbl_80D59184:
/* 80D59184  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D59188  54 07 C4 3E */	rlwinm r7, r0, 0x18, 0x10, 0x1f
/* 80D5918C  3C 60 80 D6 */	lis r3, fire_leader@ha
/* 80D59190  38 C3 95 C0 */	addi r6, r3, fire_leader@l
/* 80D59194  80 86 00 00 */	lwz r4, 0(r6)
/* 80D59198  3C 60 80 D6 */	lis r3, data_80D595C4@ha
/* 80D5919C  38 A3 95 C4 */	addi r5, r3, data_80D595C4@l
/* 80D591A0  88 05 00 00 */	lbz r0, 0(r5)
/* 80D591A4  54 00 10 3A */	slwi r0, r0, 2
/* 80D591A8  7C 64 02 14 */	add r3, r4, r0
/* 80D591AC  90 E3 05 6C */	stw r7, 0x56c(r3)
/* 80D591B0  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80D591B4  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80D591B8  80 66 00 00 */	lwz r3, 0(r6)
/* 80D591BC  88 05 00 00 */	lbz r0, 0(r5)
/* 80D591C0  54 00 10 3A */	slwi r0, r0, 2
/* 80D591C4  7C 63 02 14 */	add r3, r3, r0
/* 80D591C8  90 83 05 BC */	stw r4, 0x5bc(r3)
/* 80D591CC  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 80D591D0  80 66 00 00 */	lwz r3, 0(r6)
/* 80D591D4  88 05 00 00 */	lbz r0, 0(r5)
/* 80D591D8  7C 63 02 14 */	add r3, r3, r0
/* 80D591DC  98 83 06 5C */	stb r4, 0x65c(r3)
/* 80D591E0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D591E4  54 00 46 3E */	srwi r0, r0, 0x18
/* 80D591E8  7C 07 03 78 */	mr r7, r0
/* 80D591EC  28 00 00 FF */	cmplwi r0, 0xff
/* 80D591F0  40 82 00 08 */	bne lbl_80D591F8
/* 80D591F4  38 E0 00 00 */	li r7, 0
lbl_80D591F8:
/* 80D591F8  3C 60 80 D6 */	lis r3, fire_leader@ha
/* 80D591FC  38 C3 95 C0 */	addi r6, r3, fire_leader@l
/* 80D59200  80 86 00 00 */	lwz r4, 0(r6)
/* 80D59204  3C 60 80 D6 */	lis r3, data_80D595C4@ha
/* 80D59208  38 A3 95 C4 */	addi r5, r3, data_80D595C4@l
/* 80D5920C  88 05 00 00 */	lbz r0, 0(r5)
/* 80D59210  7C 64 02 14 */	add r3, r4, r0
/* 80D59214  98 E3 07 60 */	stb r7, 0x760(r3)
/* 80D59218  80 86 00 00 */	lwz r4, 0(r6)
/* 80D5921C  88 05 00 00 */	lbz r0, 0(r5)
/* 80D59220  1C 60 00 0C */	mulli r3, r0, 0xc
/* 80D59224  38 63 06 70 */	addi r3, r3, 0x670
/* 80D59228  7C 64 1A 14 */	add r3, r4, r3
/* 80D5922C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D59230  D0 03 00 00 */	stfs f0, 0(r3)
/* 80D59234  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D59238  D0 03 00 04 */	stfs f0, 4(r3)
/* 80D5923C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D59240  D0 03 00 08 */	stfs f0, 8(r3)
/* 80D59244  80 C6 00 00 */	lwz r6, 0(r6)
/* 80D59248  88 A5 00 00 */	lbz r5, 0(r5)
/* 80D5924C  7C 66 2A 14 */	add r3, r6, r5
/* 80D59250  88 03 06 5C */	lbz r0, 0x65c(r3)
/* 80D59254  28 00 00 FF */	cmplwi r0, 0xff
/* 80D59258  41 82 00 18 */	beq lbl_80D59270
/* 80D5925C  38 80 00 00 */	li r4, 0
/* 80D59260  54 A0 10 3A */	slwi r0, r5, 2
/* 80D59264  7C 66 02 14 */	add r3, r6, r0
/* 80D59268  90 83 06 0C */	stw r4, 0x60c(r3)
/* 80D5926C  48 00 00 14 */	b lbl_80D59280
lbl_80D59270:
/* 80D59270  38 80 00 01 */	li r4, 1
/* 80D59274  54 A0 10 3A */	slwi r0, r5, 2
/* 80D59278  7C 66 02 14 */	add r3, r6, r0
/* 80D5927C  90 83 06 0C */	stw r4, 0x60c(r3)
lbl_80D59280:
/* 80D59280  3C 60 80 D6 */	lis r3, data_80D595C4@ha
/* 80D59284  38 83 95 C4 */	addi r4, r3, data_80D595C4@l
/* 80D59288  88 64 00 00 */	lbz r3, 0(r4)
/* 80D5928C  38 03 00 01 */	addi r0, r3, 1
/* 80D59290  98 04 00 00 */	stb r0, 0(r4)
/* 80D59294  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D59298  28 00 00 01 */	cmplwi r0, 1
/* 80D5929C  40 81 00 0C */	ble lbl_80D592A8
/* 80D592A0  38 60 00 05 */	li r3, 5
/* 80D592A4  48 00 00 14 */	b lbl_80D592B8
lbl_80D592A8:
/* 80D592A8  38 00 00 00 */	li r0, 0
/* 80D592AC  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80D592B0  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80D592B4  38 60 00 04 */	li r3, 4
lbl_80D592B8:
/* 80D592B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D592BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D592C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D592C4  7C 08 03 A6 */	mtlr r0
/* 80D592C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D592CC  4E 80 00 20 */	blr 
