lbl_800685DC:
/* 800685DC  94 21 FD 50 */	stwu r1, -0x2b0(r1)
/* 800685E0  7C 08 02 A6 */	mflr r0
/* 800685E4  90 01 02 B4 */	stw r0, 0x2b4(r1)
/* 800685E8  DB E1 02 A0 */	stfd f31, 0x2a0(r1)
/* 800685EC  F3 E1 02 A8 */	psq_st f31, 680(r1), 0, 0 /* qr0 */
/* 800685F0  DB C1 02 90 */	stfd f30, 0x290(r1)
/* 800685F4  F3 C1 02 98 */	psq_st f30, 664(r1), 0, 0 /* qr0 */
/* 800685F8  DB A1 02 80 */	stfd f29, 0x280(r1)
/* 800685FC  F3 A1 02 88 */	psq_st f29, 648(r1), 0, 0 /* qr0 */
/* 80068600  DB 81 02 70 */	stfd f28, 0x270(r1)
/* 80068604  F3 81 02 78 */	psq_st f28, 632(r1), 0, 0 /* qr0 */
/* 80068608  DB 61 02 60 */	stfd f27, 0x260(r1)
/* 8006860C  F3 61 02 68 */	psq_st f27, 616(r1), 0, 0 /* qr0 */
/* 80068610  DB 41 02 50 */	stfd f26, 0x250(r1)
/* 80068614  F3 41 02 58 */	psq_st f26, 600(r1), 0, 0 /* qr0 */
/* 80068618  DB 21 02 40 */	stfd f25, 0x240(r1)
/* 8006861C  F3 21 02 48 */	psq_st f25, 584(r1), 0, 0 /* qr0 */
/* 80068620  DB 01 02 30 */	stfd f24, 0x230(r1)
/* 80068624  F3 01 02 38 */	psq_st f24, 568(r1), 0, 0 /* qr0 */
/* 80068628  DA E1 02 20 */	stfd f23, 0x220(r1)
/* 8006862C  F2 E1 02 28 */	psq_st f23, 552(r1), 0, 0 /* qr0 */
/* 80068630  DA C1 02 10 */	stfd f22, 0x210(r1)
/* 80068634  F2 C1 02 18 */	psq_st f22, 536(r1), 0, 0 /* qr0 */
/* 80068638  DA A1 02 00 */	stfd f21, 0x200(r1)
/* 8006863C  F2 A1 02 08 */	psq_st f21, 520(r1), 0, 0 /* qr0 */
/* 80068640  DA 81 01 F0 */	stfd f20, 0x1f0(r1)
/* 80068644  F2 81 01 F8 */	psq_st f20, 504(r1), 0, 0 /* qr0 */
/* 80068648  DA 61 01 E0 */	stfd f19, 0x1e0(r1)
/* 8006864C  F2 61 01 E8 */	psq_st f19, 488(r1), 0, 0 /* qr0 */
/* 80068650  39 61 01 E0 */	addi r11, r1, 0x1e0
/* 80068654  48 2F 9B 65 */	bl _savegpr_20
/* 80068658  7C 78 1B 78 */	mr r24, r3
/* 8006865C  3C 60 80 42 */	lis r3, lit_7952@ha /* 0x80424950@ha */
/* 80068660  3B E3 49 50 */	addi r31, r3, lit_7952@l /* 0x80424950@l */
/* 80068664  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80068668  3B 83 CA 54 */	addi r28, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006866C  83 BC 0E A4 */	lwz r29, 0xea4(r28)
/* 80068670  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80068674  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80068678  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 8006867C  88 0D 89 9C */	lbz r0, struct_80450F1C+0x0(r13)
/* 80068680  7C 00 07 75 */	extsb. r0, r0
/* 80068684  40 82 00 14 */	bne lbl_80068698
/* 80068688  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006868C  D0 0D 89 98 */	stfs f0, rot_9421(r13)
/* 80068690  38 00 00 01 */	li r0, 1
/* 80068694  98 0D 89 9C */	stb r0, struct_80450F1C+0x0(r13)
lbl_80068698:
/* 80068698  3B 60 00 00 */	li r27, 0
/* 8006869C  3B 20 00 00 */	li r25, 0
/* 800686A0  3B 40 00 00 */	li r26, 0
/* 800686A4  88 0D 89 9D */	lbz r0, struct_80450F1C+0x1(r13)
/* 800686A8  7C 00 07 75 */	extsb. r0, r0
/* 800686AC  40 82 03 14 */	bne lbl_800689C0
/* 800686B0  38 61 00 78 */	addi r3, r1, 0x78
/* 800686B4  38 80 3B B3 */	li r4, 0x3bb3
/* 800686B8  38 A0 79 1D */	li r5, 0x791d
/* 800686BC  38 C0 BA 01 */	li r6, -17919
/* 800686C0  48 1F ED 35 */	bl __ct__5csXyzFsss
/* 800686C4  80 01 00 78 */	lwz r0, 0x78(r1)
/* 800686C8  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 800686CC  A0 01 00 7C */	lhz r0, 0x7c(r1)
/* 800686D0  B0 1F 01 60 */	sth r0, 0x160(r31)
/* 800686D4  38 7F 01 5C */	addi r3, r31, 0x15c
/* 800686D8  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 800686DC  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 800686E0  38 BF 00 C0 */	addi r5, r31, 0xc0
/* 800686E4  48 2F 95 41 */	bl __register_global_object
/* 800686E8  38 61 00 70 */	addi r3, r1, 0x70
/* 800686EC  38 80 34 D5 */	li r4, 0x34d5
/* 800686F0  38 A0 6E D1 */	li r5, 0x6ed1
/* 800686F4  38 C0 A9 07 */	li r6, -22265
/* 800686F8  48 1F EC FD */	bl __ct__5csXyzFsss
/* 800686FC  38 7F 01 5C */	addi r3, r31, 0x15c
/* 80068700  80 01 00 70 */	lwz r0, 0x70(r1)
/* 80068704  90 03 00 06 */	stw r0, 6(r3)
/* 80068708  A0 01 00 74 */	lhz r0, 0x74(r1)
/* 8006870C  B0 03 00 0A */	sth r0, 0xa(r3)
/* 80068710  38 63 00 06 */	addi r3, r3, 6
/* 80068714  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 80068718  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 8006871C  38 BF 00 CC */	addi r5, r31, 0xcc
/* 80068720  48 2F 95 05 */	bl __register_global_object
/* 80068724  38 61 00 68 */	addi r3, r1, 0x68
/* 80068728  38 80 20 6C */	li r4, 0x206c
/* 8006872C  38 A0 7C 8C */	li r5, 0x7c8c
/* 80068730  38 C0 AF E5 */	li r6, -20507
/* 80068734  48 1F EC C1 */	bl __ct__5csXyzFsss
/* 80068738  38 7F 01 5C */	addi r3, r31, 0x15c
/* 8006873C  80 01 00 68 */	lwz r0, 0x68(r1)
/* 80068740  90 03 00 0C */	stw r0, 0xc(r3)
/* 80068744  A0 01 00 6C */	lhz r0, 0x6c(r1)
/* 80068748  B0 03 00 10 */	sth r0, 0x10(r3)
/* 8006874C  38 63 00 0C */	addi r3, r3, 0xc
/* 80068750  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 80068754  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 80068758  38 BF 00 D8 */	addi r5, r31, 0xd8
/* 8006875C  48 2F 94 C9 */	bl __register_global_object
/* 80068760  38 61 00 60 */	addi r3, r1, 0x60
/* 80068764  38 80 0F 42 */	li r4, 0xf42
/* 80068768  38 A0 79 1D */	li r5, 0x791d
/* 8006876C  38 C0 A5 98 */	li r6, -23144
/* 80068770  48 1F EC 85 */	bl __ct__5csXyzFsss
/* 80068774  38 7F 01 5C */	addi r3, r31, 0x15c
/* 80068778  80 01 00 60 */	lwz r0, 0x60(r1)
/* 8006877C  90 03 00 12 */	stw r0, 0x12(r3)
/* 80068780  A0 01 00 64 */	lhz r0, 0x64(r1)
/* 80068784  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80068788  38 63 00 12 */	addi r3, r3, 0x12
/* 8006878C  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 80068790  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 80068794  38 BF 00 E4 */	addi r5, r31, 0xe4
/* 80068798  48 2F 94 8D */	bl __register_global_object
/* 8006879C  38 61 00 58 */	addi r3, r1, 0x58
/* 800687A0  38 80 FE 49 */	li r4, -439
/* 800687A4  38 A0 75 AF */	li r5, 0x75af
/* 800687A8  38 C0 BA 01 */	li r6, -17919
/* 800687AC  48 1F EC 49 */	bl __ct__5csXyzFsss
/* 800687B0  38 7F 01 5C */	addi r3, r31, 0x15c
/* 800687B4  80 01 00 58 */	lwz r0, 0x58(r1)
/* 800687B8  90 03 00 18 */	stw r0, 0x18(r3)
/* 800687BC  A0 01 00 5C */	lhz r0, 0x5c(r1)
/* 800687C0  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 800687C4  38 63 00 18 */	addi r3, r3, 0x18
/* 800687C8  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 800687CC  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 800687D0  38 BF 00 F0 */	addi r5, r31, 0xf0
/* 800687D4  48 2F 94 51 */	bl __register_global_object
/* 800687D8  38 61 00 50 */	addi r3, r1, 0x50
/* 800687DC  38 80 E3 03 */	li r4, -7421
/* 800687E0  38 A0 79 1D */	li r5, 0x791d
/* 800687E4  38 C0 49 6E */	li r6, 0x496e
/* 800687E8  48 1F EC 0D */	bl __ct__5csXyzFsss
/* 800687EC  38 7F 01 5C */	addi r3, r31, 0x15c
/* 800687F0  80 01 00 50 */	lwz r0, 0x50(r1)
/* 800687F4  90 03 00 1E */	stw r0, 0x1e(r3)
/* 800687F8  A0 01 00 54 */	lhz r0, 0x54(r1)
/* 800687FC  B0 03 00 22 */	sth r0, 0x22(r3)
/* 80068800  38 63 00 1E */	addi r3, r3, 0x1e
/* 80068804  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 80068808  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 8006880C  38 BF 00 FC */	addi r5, r31, 0xfc
/* 80068810  48 2F 94 15 */	bl __register_global_object
/* 80068814  38 61 00 48 */	addi r3, r1, 0x48
/* 80068818  38 80 D5 47 */	li r4, -10937
/* 8006881C  38 A0 6D 60 */	li r5, 0x6d60
/* 80068820  38 C0 3A 98 */	li r6, 0x3a98
/* 80068824  48 1F EB D1 */	bl __ct__5csXyzFsss
/* 80068828  38 7F 01 5C */	addi r3, r31, 0x15c
/* 8006882C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80068830  90 03 00 24 */	stw r0, 0x24(r3)
/* 80068834  A0 01 00 4C */	lhz r0, 0x4c(r1)
/* 80068838  B0 03 00 28 */	sth r0, 0x28(r3)
/* 8006883C  38 63 00 24 */	addi r3, r3, 0x24
/* 80068840  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 80068844  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 80068848  38 BF 01 08 */	addi r5, r31, 0x108
/* 8006884C  48 2F 93 D9 */	bl __register_global_object
/* 80068850  38 61 00 40 */	addi r3, r1, 0x40
/* 80068854  38 80 D8 F0 */	li r4, -10000
/* 80068858  38 A0 61 46 */	li r5, 0x6146
/* 8006885C  38 C0 47 E0 */	li r6, 0x47e0
/* 80068860  48 1F EB 95 */	bl __ct__5csXyzFsss
/* 80068864  38 7F 01 5C */	addi r3, r31, 0x15c
/* 80068868  80 01 00 40 */	lwz r0, 0x40(r1)
/* 8006886C  90 03 00 2A */	stw r0, 0x2a(r3)
/* 80068870  A0 01 00 44 */	lhz r0, 0x44(r1)
/* 80068874  B0 03 00 2E */	sth r0, 0x2e(r3)
/* 80068878  38 63 00 2A */	addi r3, r3, 0x2a
/* 8006887C  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 80068880  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 80068884  38 BF 01 14 */	addi r5, r31, 0x114
/* 80068888  48 2F 93 9D */	bl __register_global_object
/* 8006888C  38 61 00 38 */	addi r3, r1, 0x38
/* 80068890  38 80 DB 48 */	li r4, -9400
/* 80068894  38 A0 57 E4 */	li r5, 0x57e4
/* 80068898  38 C0 3E 1C */	li r6, 0x3e1c
/* 8006889C  48 1F EB 59 */	bl __ct__5csXyzFsss
/* 800688A0  38 7F 01 5C */	addi r3, r31, 0x15c
/* 800688A4  80 01 00 38 */	lwz r0, 0x38(r1)
/* 800688A8  90 03 00 30 */	stw r0, 0x30(r3)
/* 800688AC  A0 01 00 3C */	lhz r0, 0x3c(r1)
/* 800688B0  B0 03 00 34 */	sth r0, 0x34(r3)
/* 800688B4  38 63 00 30 */	addi r3, r3, 0x30
/* 800688B8  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 800688BC  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 800688C0  38 BF 01 20 */	addi r5, r31, 0x120
/* 800688C4  48 2F 93 61 */	bl __register_global_object
/* 800688C8  38 61 00 30 */	addi r3, r1, 0x30
/* 800688CC  38 80 DC 25 */	li r4, -9179
/* 800688D0  38 A0 53 34 */	li r5, 0x5334
/* 800688D4  38 C0 37 DC */	li r6, 0x37dc
/* 800688D8  48 1F EB 1D */	bl __ct__5csXyzFsss
/* 800688DC  38 7F 01 5C */	addi r3, r31, 0x15c
/* 800688E0  80 01 00 30 */	lwz r0, 0x30(r1)
/* 800688E4  90 03 00 36 */	stw r0, 0x36(r3)
/* 800688E8  A0 01 00 34 */	lhz r0, 0x34(r1)
/* 800688EC  B0 03 00 3A */	sth r0, 0x3a(r3)
/* 800688F0  38 63 00 36 */	addi r3, r3, 0x36
/* 800688F4  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 800688F8  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 800688FC  38 BF 01 2C */	addi r5, r31, 0x12c
/* 80068900  48 2F 93 25 */	bl __register_global_object
/* 80068904  38 61 00 28 */	addi r3, r1, 0x28
/* 80068908  38 80 D7 C4 */	li r4, -10300
/* 8006890C  38 A0 55 F0 */	li r5, 0x55f0
/* 80068910  38 C0 52 08 */	li r6, 0x5208
/* 80068914  48 1F EA E1 */	bl __ct__5csXyzFsss
/* 80068918  38 7F 01 5C */	addi r3, r31, 0x15c
/* 8006891C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80068920  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80068924  A0 01 00 2C */	lhz r0, 0x2c(r1)
/* 80068928  B0 03 00 40 */	sth r0, 0x40(r3)
/* 8006892C  38 63 00 3C */	addi r3, r3, 0x3c
/* 80068930  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 80068934  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 80068938  38 BF 01 38 */	addi r5, r31, 0x138
/* 8006893C  48 2F 92 E9 */	bl __register_global_object
/* 80068940  38 61 00 20 */	addi r3, r1, 0x20
/* 80068944  38 80 C1 80 */	li r4, -16000
/* 80068948  38 A0 63 9C */	li r5, 0x639c
/* 8006894C  38 C0 4E 20 */	li r6, 0x4e20
/* 80068950  48 1F EA A5 */	bl __ct__5csXyzFsss
/* 80068954  38 7F 01 5C */	addi r3, r31, 0x15c
/* 80068958  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8006895C  90 03 00 42 */	stw r0, 0x42(r3)
/* 80068960  A0 01 00 24 */	lhz r0, 0x24(r1)
/* 80068964  B0 03 00 46 */	sth r0, 0x46(r3)
/* 80068968  38 63 00 42 */	addi r3, r3, 0x42
/* 8006896C  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 80068970  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 80068974  38 BF 01 44 */	addi r5, r31, 0x144
/* 80068978  48 2F 92 AD */	bl __register_global_object
/* 8006897C  38 61 00 18 */	addi r3, r1, 0x18
/* 80068980  38 80 00 00 */	li r4, 0
/* 80068984  38 A0 75 30 */	li r5, 0x7530
/* 80068988  38 C0 4A 38 */	li r6, 0x4a38
/* 8006898C  48 1F EA 69 */	bl __ct__5csXyzFsss
/* 80068990  38 7F 01 5C */	addi r3, r31, 0x15c
/* 80068994  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80068998  90 03 00 48 */	stw r0, 0x48(r3)
/* 8006899C  A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 800689A0  B0 03 00 4C */	sth r0, 0x4c(r3)
/* 800689A4  38 63 00 48 */	addi r3, r3, 0x48
/* 800689A8  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 800689AC  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 800689B0  38 BF 01 50 */	addi r5, r31, 0x150
/* 800689B4  48 2F 92 71 */	bl __register_global_object
/* 800689B8  38 00 00 01 */	li r0, 1
/* 800689BC  98 0D 89 9D */	stb r0, struct_80450F1C+0x1(r13)
lbl_800689C0:
/* 800689C0  A8 1D 00 48 */	lha r0, 0x48(r29)
/* 800689C4  2C 00 00 00 */	cmpwi r0, 0
/* 800689C8  41 82 0A C4 */	beq lbl_8006948C
/* 800689CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800689D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800689D4  3A E3 4E 00 */	addi r23, r3, 0x4e00
/* 800689D8  7E E3 BB 78 */	mr r3, r23
/* 800689DC  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 800689E0  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 800689E4  48 2F FF B1 */	bl strcmp
/* 800689E8  2C 03 00 00 */	cmpwi r3, 0
/* 800689EC  40 82 00 1C */	bne lbl_80068A08
/* 800689F0  38 60 00 00 */	li r3, 0
/* 800689F4  4B FC 3F 89 */	bl getLayerNo__14dComIfG_play_cFi
/* 800689F8  2C 03 00 00 */	cmpwi r3, 0
/* 800689FC  40 82 00 0C */	bne lbl_80068A08
/* 80068A00  3B 60 00 01 */	li r27, 1
/* 80068A04  48 00 00 4C */	b lbl_80068A50
lbl_80068A08:
/* 80068A08  7E E3 BB 78 */	mr r3, r23
/* 80068A0C  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 80068A10  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 80068A14  38 84 00 4C */	addi r4, r4, 0x4c
/* 80068A18  48 2F FF 7D */	bl strcmp
/* 80068A1C  2C 03 00 00 */	cmpwi r3, 0
/* 80068A20  41 82 00 2C */	beq lbl_80068A4C
/* 80068A24  7E E3 BB 78 */	mr r3, r23
/* 80068A28  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 80068A2C  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 80068A30  38 84 00 64 */	addi r4, r4, 0x64
/* 80068A34  48 2F FF 61 */	bl strcmp
/* 80068A38  2C 03 00 00 */	cmpwi r3, 0
/* 80068A3C  40 82 00 14 */	bne lbl_80068A50
/* 80068A40  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 80068A44  7C 00 07 75 */	extsb. r0, r0
/* 80068A48  40 82 00 08 */	bne lbl_80068A50
lbl_80068A4C:
/* 80068A4C  3B 20 00 01 */	li r25, 1
lbl_80068A50:
/* 80068A50  7E E3 BB 78 */	mr r3, r23
/* 80068A54  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 80068A58  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 80068A5C  38 84 00 64 */	addi r4, r4, 0x64
/* 80068A60  48 2F FF 35 */	bl strcmp
/* 80068A64  2C 03 00 00 */	cmpwi r3, 0
/* 80068A68  40 82 00 14 */	bne lbl_80068A7C
/* 80068A6C  48 13 70 4D */	bl dKy_daynight_check__Fv
/* 80068A70  2C 03 00 00 */	cmpwi r3, 0
/* 80068A74  41 82 00 08 */	beq lbl_80068A7C
/* 80068A78  3B 40 00 01 */	li r26, 1
lbl_80068A7C:
/* 80068A7C  38 00 00 DC */	li r0, 0xdc
/* 80068A80  98 01 00 14 */	stb r0, 0x14(r1)
/* 80068A84  38 00 00 E6 */	li r0, 0xe6
/* 80068A88  98 01 00 15 */	stb r0, 0x15(r1)
/* 80068A8C  38 00 00 FF */	li r0, 0xff
/* 80068A90  98 01 00 16 */	stb r0, 0x16(r1)
/* 80068A94  98 01 00 17 */	stb r0, 0x17(r1)
/* 80068A98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80068A9C  3A 83 61 C0 */	addi r20, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80068AA0  80 74 61 B0 */	lwz r3, 0x61b0(r20)
/* 80068AA4  28 03 00 00 */	cmplwi r3, 0
/* 80068AA8  41 82 09 E4 */	beq lbl_8006948C
/* 80068AAC  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80068AB0  38 81 01 28 */	addi r4, r1, 0x128
/* 80068AB4  48 2D DA FD */	bl PSMTXInverse
/* 80068AB8  48 00 00 08 */	b lbl_80068AC0
/* 80068ABC  48 00 09 D0 */	b lbl_8006948C
lbl_80068AC0:
/* 80068AC0  7E E3 BB 78 */	mr r3, r23
/* 80068AC4  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 80068AC8  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 80068ACC  48 2F FE C9 */	bl strcmp
/* 80068AD0  2C 03 00 00 */	cmpwi r3, 0
/* 80068AD4  40 82 00 30 */	bne lbl_80068B04
/* 80068AD8  38 60 00 00 */	li r3, 0
/* 80068ADC  4B FC 3E A1 */	bl getLayerNo__14dComIfG_play_cFi
/* 80068AE0  2C 03 00 00 */	cmpwi r3, 0
/* 80068AE4  40 82 00 20 */	bne lbl_80068B04
/* 80068AE8  C0 1C 10 94 */	lfs f0, 0x1094(r28)
/* 80068AEC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80068AF0  C0 1C 10 98 */	lfs f0, 0x1098(r28)
/* 80068AF4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80068AF8  C0 1C 10 9C */	lfs f0, 0x109c(r28)
/* 80068AFC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80068B00  48 00 00 64 */	b lbl_80068B64
lbl_80068B04:
/* 80068B04  38 61 00 80 */	addi r3, r1, 0x80
/* 80068B08  38 9E 00 D8 */	addi r4, r30, 0xd8
/* 80068B0C  38 BC 10 94 */	addi r5, r28, 0x1094
/* 80068B10  48 1F DF D5 */	bl __pl__4cXyzCFRC3Vec
/* 80068B14  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80068B18  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80068B1C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80068B20  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80068B24  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80068B28  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80068B2C  2C 1A 00 00 */	cmpwi r26, 0
/* 80068B30  41 82 00 34 */	beq lbl_80068B64
/* 80068B34  C0 22 8A 6C */	lfs f1, lit_7545(r2)
/* 80068B38  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80068B3C  EC 01 00 2A */	fadds f0, f1, f0
/* 80068B40  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80068B44  C0 22 8A 70 */	lfs f1, lit_7546(r2)
/* 80068B48  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80068B4C  EC 01 00 2A */	fadds f0, f1, f0
/* 80068B50  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80068B54  C0 22 8A 74 */	lfs f1, lit_7547(r2)
/* 80068B58  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80068B5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80068B60  D0 01 00 B8 */	stfs f0, 0xb8(r1)
lbl_80068B64:
/* 80068B64  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80068B68  38 81 00 E0 */	addi r4, r1, 0xe0
/* 80068B6C  4B FA C7 A5 */	bl mDoLib_project__FP3VecP3Vec
/* 80068B70  38 60 00 01 */	li r3, 1
/* 80068B74  48 2F 4F BD */	bl GXSetNumChans
/* 80068B78  38 60 00 00 */	li r3, 0
/* 80068B7C  38 80 00 00 */	li r4, 0
/* 80068B80  38 A0 00 00 */	li r5, 0
/* 80068B84  38 C0 00 00 */	li r6, 0
/* 80068B88  38 E0 00 00 */	li r7, 0
/* 80068B8C  39 00 00 02 */	li r8, 2
/* 80068B90  39 20 00 02 */	li r9, 2
/* 80068B94  48 2F 4F D9 */	bl GXSetChanCtrl
/* 80068B98  38 60 00 00 */	li r3, 0
/* 80068B9C  48 2F 32 61 */	bl GXSetNumTexGens
/* 80068BA0  38 60 00 01 */	li r3, 1
/* 80068BA4  48 2F 6C ED */	bl GXSetNumTevStages
/* 80068BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80068BAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80068BB0  38 60 00 01 */	li r3, 1
/* 80068BB4  38 81 00 10 */	addi r4, r1, 0x10
/* 80068BB8  48 2F 67 C5 */	bl GXSetTevColor
/* 80068BBC  38 60 00 00 */	li r3, 0
/* 80068BC0  38 80 00 FF */	li r4, 0xff
/* 80068BC4  38 A0 00 FF */	li r5, 0xff
/* 80068BC8  38 C0 00 04 */	li r6, 4
/* 80068BCC  48 2F 6B 29 */	bl GXSetTevOrder
/* 80068BD0  38 60 00 00 */	li r3, 0
/* 80068BD4  38 80 00 0F */	li r4, 0xf
/* 80068BD8  38 A0 00 0F */	li r5, 0xf
/* 80068BDC  38 C0 00 0F */	li r6, 0xf
/* 80068BE0  38 E0 00 02 */	li r7, 2
/* 80068BE4  48 2F 66 41 */	bl GXSetTevColorIn
/* 80068BE8  38 60 00 00 */	li r3, 0
/* 80068BEC  38 80 00 00 */	li r4, 0
/* 80068BF0  38 A0 00 00 */	li r5, 0
/* 80068BF4  38 C0 00 00 */	li r6, 0
/* 80068BF8  38 E0 00 01 */	li r7, 1
/* 80068BFC  39 00 00 00 */	li r8, 0
/* 80068C00  48 2F 66 AD */	bl GXSetTevColorOp
/* 80068C04  38 60 00 00 */	li r3, 0
/* 80068C08  38 80 00 07 */	li r4, 7
/* 80068C0C  38 A0 00 07 */	li r5, 7
/* 80068C10  38 C0 00 07 */	li r6, 7
/* 80068C14  38 E0 00 01 */	li r7, 1
/* 80068C18  48 2F 66 51 */	bl GXSetTevAlphaIn
/* 80068C1C  38 60 00 00 */	li r3, 0
/* 80068C20  38 80 00 00 */	li r4, 0
/* 80068C24  38 A0 00 00 */	li r5, 0
/* 80068C28  38 C0 00 00 */	li r6, 0
/* 80068C2C  38 E0 00 01 */	li r7, 1
/* 80068C30  39 00 00 00 */	li r8, 0
/* 80068C34  48 2F 66 E1 */	bl GXSetTevAlphaOp
/* 80068C38  38 60 00 01 */	li r3, 1
/* 80068C3C  38 80 00 03 */	li r4, 3
/* 80068C40  38 A0 00 00 */	li r5, 0
/* 80068C44  48 2F 70 59 */	bl GXSetZMode
/* 80068C48  38 60 00 01 */	li r3, 1
/* 80068C4C  38 80 00 04 */	li r4, 4
/* 80068C50  38 A0 00 05 */	li r5, 5
/* 80068C54  38 C0 00 00 */	li r6, 0
/* 80068C58  48 2F 6F 99 */	bl GXSetBlendMode
/* 80068C5C  38 60 00 04 */	li r3, 4
/* 80068C60  38 80 00 00 */	li r4, 0
/* 80068C64  38 A0 00 01 */	li r5, 1
/* 80068C68  38 C0 00 04 */	li r6, 4
/* 80068C6C  38 E0 00 00 */	li r7, 0
/* 80068C70  48 2F 69 B5 */	bl GXSetAlphaCompare
/* 80068C74  38 60 00 00 */	li r3, 0
/* 80068C78  48 2F 64 5D */	bl GXSetNumIndStages
/* 80068C7C  38 60 00 00 */	li r3, 0
/* 80068C80  38 80 00 09 */	li r4, 9
/* 80068C84  38 A0 00 01 */	li r5, 1
/* 80068C88  38 C0 00 04 */	li r6, 4
/* 80068C8C  38 E0 00 00 */	li r7, 0
/* 80068C90  48 2F 29 35 */	bl GXSetVtxAttrFmt
/* 80068C94  48 2F 28 F9 */	bl GXClearVtxDesc
/* 80068C98  38 60 00 09 */	li r3, 9
/* 80068C9C  38 80 00 01 */	li r4, 1
/* 80068CA0  48 2F 22 19 */	bl GXSetVtxDesc
/* 80068CA4  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80068CA8  38 80 00 5A */	li r4, 0x5a
/* 80068CAC  C0 22 8A 60 */	lfs f1, lit_7211(r2)
/* 80068CB0  C0 0D 89 98 */	lfs f0, rot_9421(r13)
/* 80068CB4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80068CB8  48 2D D9 F1 */	bl PSMTXRotRad
/* 80068CBC  38 61 01 28 */	addi r3, r1, 0x128
/* 80068CC0  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80068CC4  7C 65 1B 78 */	mr r5, r3
/* 80068CC8  48 2D D8 1D */	bl PSMTXConcat
/* 80068CCC  7F 03 C3 78 */	mr r3, r24
/* 80068CD0  38 80 00 00 */	li r4, 0
/* 80068CD4  48 2F 75 79 */	bl GXLoadPosMtxImm
/* 80068CD8  38 60 00 00 */	li r3, 0
/* 80068CDC  48 2F 76 11 */	bl GXSetCurrentMtx
/* 80068CE0  C0 2D 89 98 */	lfs f1, rot_9421(r13)
/* 80068CE4  C0 02 8B 54 */	lfs f0, lit_9833(r2)
/* 80068CE8  EC 21 00 2A */	fadds f1, f1, f0
/* 80068CEC  D0 2D 89 98 */	stfs f1, rot_9421(r13)
/* 80068CF0  C0 02 8B 14 */	lfs f0, lit_9387(r2)
/* 80068CF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80068CF8  40 81 00 0C */	ble lbl_80068D04
/* 80068CFC  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80068D00  D0 0D 89 98 */	stfs f0, rot_9421(r13)
lbl_80068D04:
/* 80068D04  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80068D08  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80068D0C  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80068D10  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80068D14  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80068D18  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80068D1C  C2 E2 87 B8 */	lfs f23, lit_3954(r2)
/* 80068D20  80 74 61 B0 */	lwz r3, 0x61b0(r20)
/* 80068D24  28 03 00 00 */	cmplwi r3, 0
/* 80068D28  41 82 00 2C */	beq lbl_80068D54
/* 80068D2C  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 80068D30  C0 02 8A 58 */	lfs f0, lit_7209(r2)
/* 80068D34  EC 21 00 24 */	fdivs f1, f1, f0
/* 80068D38  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 80068D3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80068D40  4C 41 13 82 */	cror 2, 1, 2
/* 80068D44  40 82 00 08 */	bne lbl_80068D4C
/* 80068D48  FC 20 00 90 */	fmr f1, f0
lbl_80068D4C:
/* 80068D4C  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 80068D50  EE E0 08 28 */	fsubs f23, f0, f1
lbl_80068D54:
/* 80068D54  C0 22 8B 58 */	lfs f1, lit_9834(r2)
/* 80068D58  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 80068D5C  EC 00 B8 28 */	fsubs f0, f0, f23
/* 80068D60  EE A1 00 32 */	fmuls f21, f1, f0
/* 80068D64  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80068D68  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80068D6C  D2 A1 00 CC */	stfs f21, 0xcc(r1)
/* 80068D70  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80068D74  38 61 01 28 */	addi r3, r1, 0x128
/* 80068D78  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80068D7C  38 A1 00 BC */	addi r5, r1, 0xbc
/* 80068D80  48 2D DF ED */	bl PSMTXMultVec
/* 80068D84  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 80068D88  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80068D8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80068D90  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 80068D94  C0 21 00 F0 */	lfs f1, 0xf0(r1)
/* 80068D98  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80068D9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80068DA0  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 80068DA4  C0 21 00 F4 */	lfs f1, 0xf4(r1)
/* 80068DA8  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80068DAC  EC 01 00 2A */	fadds f0, f1, f0
/* 80068DB0  D0 01 01 60 */	stfs f0, 0x160(r1)
/* 80068DB4  D2 A1 00 C8 */	stfs f21, 0xc8(r1)
/* 80068DB8  C0 02 88 3C */	lfs f0, lit_4364(r2)
/* 80068DBC  EC 00 05 72 */	fmuls f0, f0, f21
/* 80068DC0  FE 80 00 50 */	fneg f20, f0
/* 80068DC4  D2 81 00 CC */	stfs f20, 0xcc(r1)
/* 80068DC8  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80068DCC  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80068DD0  38 61 01 28 */	addi r3, r1, 0x128
/* 80068DD4  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80068DD8  38 A1 00 BC */	addi r5, r1, 0xbc
/* 80068DDC  48 2D DF 91 */	bl PSMTXMultVec
/* 80068DE0  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 80068DE4  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80068DE8  EC 01 00 2A */	fadds f0, f1, f0
/* 80068DEC  D0 01 01 64 */	stfs f0, 0x164(r1)
/* 80068DF0  C0 21 00 F0 */	lfs f1, 0xf0(r1)
/* 80068DF4  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80068DF8  EC 01 00 2A */	fadds f0, f1, f0
/* 80068DFC  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 80068E00  C0 21 00 F4 */	lfs f1, 0xf4(r1)
/* 80068E04  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80068E08  EC 01 00 2A */	fadds f0, f1, f0
/* 80068E0C  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 80068E10  FC 00 A8 50 */	fneg f0, f21
/* 80068E14  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80068E18  D2 81 00 CC */	stfs f20, 0xcc(r1)
/* 80068E1C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 80068E20  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80068E24  38 61 01 28 */	addi r3, r1, 0x128
/* 80068E28  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80068E2C  38 A1 00 BC */	addi r5, r1, 0xbc
/* 80068E30  48 2D DF 3D */	bl PSMTXMultVec
/* 80068E34  C3 41 00 EC */	lfs f26, 0xec(r1)
/* 80068E38  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80068E3C  EC 1A 00 2A */	fadds f0, f26, f0
/* 80068E40  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 80068E44  C3 61 00 F0 */	lfs f27, 0xf0(r1)
/* 80068E48  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80068E4C  EC 1B 00 2A */	fadds f0, f27, f0
/* 80068E50  D0 01 01 74 */	stfs f0, 0x174(r1)
/* 80068E54  C3 81 00 F4 */	lfs f28, 0xf4(r1)
/* 80068E58  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80068E5C  EC 1C 00 2A */	fadds f0, f28, f0
/* 80068E60  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 80068E64  3A E0 00 00 */	li r23, 0
/* 80068E68  3B C0 00 00 */	li r30, 0
/* 80068E6C  C2 C2 87 B8 */	lfs f22, lit_3954(r2)
/* 80068E70  3A C0 00 00 */	li r22, 0
/* 80068E74  3A A0 00 00 */	li r21, 0
/* 80068E78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80068E7C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80068E80  C3 A2 87 E4 */	lfs f29, lit_4108(r2)
/* 80068E84  C0 22 88 94 */	lfs f1, lit_5100(r2)
/* 80068E88  EC 17 05 F2 */	fmuls f0, f23, f23
/* 80068E8C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80068E90  EF 3D 08 2A */	fadds f25, f29, f1
/* 80068E94  C0 02 88 DC */	lfs f0, lit_5118(r2)
/* 80068E98  EF 00 08 2A */	fadds f24, f0, f1
/* 80068E9C  FF C0 B0 90 */	fmr f30, f22
/* 80068EA0  FF E0 B0 90 */	fmr f31, f22
/* 80068EA4  57 78 06 3E */	clrlwi r24, r27, 0x18
/* 80068EA8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80068EAC  3A 83 CA 54 */	addi r20, r3, g_env_light@l /* 0x8042CA54@l */
/* 80068EB0  48 00 05 C8 */	b lbl_80069478
lbl_80068EB4:
/* 80068EB4  2C 16 00 0D */	cmpwi r22, 0xd
/* 80068EB8  40 80 00 C0 */	bge lbl_80068F78
/* 80068EBC  38 9F 01 5C */	addi r4, r31, 0x15c
/* 80068EC0  7C 84 AA 14 */	add r4, r4, r21
/* 80068EC4  A8 04 00 00 */	lha r0, 0(r4)
/* 80068EC8  C8 22 87 C8 */	lfd f1, lit_3995(r2)
/* 80068ECC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80068ED0  90 01 01 8C */	stw r0, 0x18c(r1)
/* 80068ED4  3C 60 43 30 */	lis r3, 0x4330
/* 80068ED8  90 61 01 88 */	stw r3, 0x188(r1)
/* 80068EDC  C8 01 01 88 */	lfd f0, 0x188(r1)
/* 80068EE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80068EE4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80068EE8  A8 04 00 02 */	lha r0, 2(r4)
/* 80068EEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80068EF0  90 01 01 94 */	stw r0, 0x194(r1)
/* 80068EF4  90 61 01 90 */	stw r3, 0x190(r1)
/* 80068EF8  C8 01 01 90 */	lfd f0, 0x190(r1)
/* 80068EFC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80068F00  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80068F04  A8 04 00 04 */	lha r0, 4(r4)
/* 80068F08  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80068F0C  90 01 01 9C */	stw r0, 0x19c(r1)
/* 80068F10  90 61 01 98 */	stw r3, 0x198(r1)
/* 80068F14  C8 01 01 98 */	lfd f0, 0x198(r1)
/* 80068F18  EC 00 08 28 */	fsubs f0, f0, f1
/* 80068F1C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80068F20  2C 16 00 04 */	cmpwi r22, 4
/* 80068F24  41 81 00 14 */	bgt lbl_80068F38
/* 80068F28  C0 22 8B 5C */	lfs f1, lit_9835(r2)
/* 80068F2C  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 80068F30  EE A1 00 2A */	fadds f21, f1, f0
/* 80068F34  48 00 00 10 */	b lbl_80068F44
lbl_80068F38:
/* 80068F38  C0 22 89 7C */	lfs f1, lit_5739(r2)
/* 80068F3C  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 80068F40  EE A1 00 2A */	fadds f21, f1, f0
lbl_80068F44:
/* 80068F44  C0 02 88 3C */	lfs f0, lit_4364(r2)
/* 80068F48  EC 00 05 72 */	fmuls f0, f0, f21
/* 80068F4C  EC 17 00 32 */	fmuls f0, f23, f0
/* 80068F50  EE B5 00 28 */	fsubs f21, f21, f0
/* 80068F54  38 00 00 A0 */	li r0, 0xa0
/* 80068F58  98 01 00 14 */	stb r0, 0x14(r1)
/* 80068F5C  38 00 00 8C */	li r0, 0x8c
/* 80068F60  98 01 00 15 */	stb r0, 0x15(r1)
/* 80068F64  38 00 00 96 */	li r0, 0x96
/* 80068F68  98 01 00 16 */	stb r0, 0x16(r1)
/* 80068F6C  38 00 00 C3 */	li r0, 0xc3
/* 80068F70  98 01 00 17 */	stb r0, 0x17(r1)
/* 80068F74  48 00 01 50 */	b lbl_800690C4
lbl_80068F78:
/* 80068F78  C0 82 88 48 */	lfs f4, lit_4367(r2)
/* 80068F7C  C0 7D 00 3C */	lfs f3, 0x3c(r29)
/* 80068F80  C0 42 8B 60 */	lfs f2, lit_9836(r2)
/* 80068F84  56 C0 06 FE */	clrlwi r0, r22, 0x1b
/* 80068F88  C8 02 87 C8 */	lfd f0, lit_3995(r2)
/* 80068F8C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80068F90  90 01 01 9C */	stw r0, 0x19c(r1)
/* 80068F94  3C A0 43 30 */	lis r5, 0x4330
/* 80068F98  90 A1 01 98 */	stw r5, 0x198(r1)
/* 80068F9C  C8 21 01 98 */	lfd f1, 0x198(r1)
/* 80068FA0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80068FA4  EC 22 00 72 */	fmuls f1, f2, f1
/* 80068FA8  EC 23 00 72 */	fmuls f1, f3, f1
/* 80068FAC  EE A4 08 2A */	fadds f21, f4, f1
/* 80068FB0  C0 62 88 14 */	lfs f3, lit_4354(r2)
/* 80068FB4  C0 22 8B 64 */	lfs f1, lit_9837(r2)
/* 80068FB8  EC 21 05 B2 */	fmuls f1, f1, f22
/* 80068FBC  EC 83 08 28 */	fsubs f4, f3, f1
/* 80068FC0  C0 42 89 6C */	lfs f2, lit_5735(r2)
/* 80068FC4  38 17 80 00 */	addi r0, r23, -32768
/* 80068FC8  54 04 04 38 */	rlwinm r4, r0, 0, 0x10, 0x1c
/* 80068FCC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80068FD0  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80068FD4  7C 60 22 14 */	add r3, r0, r4
/* 80068FD8  C0 23 00 00 */	lfs f1, 0(r3)
/* 80068FDC  FC 20 08 50 */	fneg f1, f1
/* 80068FE0  EC 22 00 72 */	fmuls f1, f2, f1
/* 80068FE4  EC 24 00 72 */	fmuls f1, f4, f1
/* 80068FE8  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 80068FEC  C0 22 8A 58 */	lfs f1, lit_7209(r2)
/* 80068FF0  EC 21 B0 2A */	fadds f1, f1, f22
/* 80068FF4  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 80068FF8  C0 23 00 04 */	lfs f1, 4(r3)
/* 80068FFC  EC 22 00 72 */	fmuls f1, f2, f1
/* 80069000  EC 24 00 72 */	fmuls f1, f4, f1
/* 80069004  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 80069008  7E F7 F2 14 */	add r23, r23, r30
/* 8006900C  C0 42 87 BC */	lfs f2, lit_3970(r2)
/* 80069010  EC 96 10 24 */	fdivs f4, f22, f2
/* 80069014  EC 24 01 32 */	fmuls f1, f4, f4
/* 80069018  EC 84 00 72 */	fmuls f4, f4, f1
/* 8006901C  C0 22 89 58 */	lfs f1, lit_5730(r2)
/* 80069020  EC 21 01 32 */	fmuls f1, f1, f4
/* 80069024  EC 23 08 2A */	fadds f1, f3, f1
/* 80069028  EE D6 08 2A */	fadds f22, f22, f1
/* 8006902C  FC 16 10 40 */	fcmpo cr0, f22, f2
/* 80069030  3B DE 08 CA */	addi r30, r30, 0x8ca
/* 80069034  40 81 00 28 */	ble lbl_8006905C
/* 80069038  C0 42 88 8C */	lfs f2, lit_5098(r2)
/* 8006903C  6E C0 80 00 */	xoris r0, r22, 0x8000
/* 80069040  90 01 01 94 */	stw r0, 0x194(r1)
/* 80069044  90 A1 01 90 */	stw r5, 0x190(r1)
/* 80069048  C8 21 01 90 */	lfd f1, 0x190(r1)
/* 8006904C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80069050  C0 02 88 9C */	lfs f0, lit_5102(r2)
/* 80069054  EC 01 00 24 */	fdivs f0, f1, f0
/* 80069058  EE C2 00 32 */	fmuls f22, f2, f0
lbl_8006905C:
/* 8006905C  56 C4 17 3A */	rlwinm r4, r22, 2, 0x1c, 0x1d
/* 80069060  3C 60 80 38 */	lis r3, star_col@ha /* 0x8037A568@ha */
/* 80069064  38 03 A5 68 */	addi r0, r3, star_col@l /* 0x8037A568@l */
/* 80069068  7C 60 22 14 */	add r3, r0, r4
/* 8006906C  88 03 00 00 */	lbz r0, 0(r3)
/* 80069070  98 01 00 14 */	stb r0, 0x14(r1)
/* 80069074  88 03 00 01 */	lbz r0, 1(r3)
/* 80069078  98 01 00 15 */	stb r0, 0x15(r1)
/* 8006907C  88 03 00 02 */	lbz r0, 2(r3)
/* 80069080  98 01 00 16 */	stb r0, 0x16(r1)
/* 80069084  88 03 00 03 */	lbz r0, 3(r3)
/* 80069088  98 01 00 17 */	stb r0, 0x17(r1)
/* 8006908C  C0 42 8A B0 */	lfs f2, lit_8211(r2)
/* 80069090  56 C0 0E 7C */	rlwinm r0, r22, 1, 0x19, 0x1e
/* 80069094  C8 22 87 C8 */	lfd f1, lit_3995(r2)
/* 80069098  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8006909C  90 01 01 8C */	stw r0, 0x18c(r1)
/* 800690A0  3C 00 43 30 */	lis r0, 0x4330
/* 800690A4  90 01 01 88 */	stw r0, 0x188(r1)
/* 800690A8  C8 01 01 88 */	lfd f0, 0x188(r1)
/* 800690AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 800690B0  EC 02 00 2A */	fadds f0, f2, f0
/* 800690B4  FC 00 00 1E */	fctiwz f0, f0
/* 800690B8  D8 01 01 A0 */	stfd f0, 0x1a0(r1)
/* 800690BC  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 800690C0  98 01 00 17 */	stb r0, 0x17(r1)
lbl_800690C4:
/* 800690C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800690C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800690CC  38 60 00 01 */	li r3, 1
/* 800690D0  38 81 00 0C */	addi r4, r1, 0xc
/* 800690D4  48 2F 62 A9 */	bl GXSetTevColor
/* 800690D8  A3 5C 00 38 */	lhz r26, 0x38(r28)
/* 800690DC  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 800690E0  EC 1A 00 2A */	fadds f0, f26, f0
/* 800690E4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 800690E8  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 800690EC  EC 1B 00 2A */	fadds f0, f27, f0
/* 800690F0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 800690F4  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 800690F8  EC 1C 00 2A */	fadds f0, f28, f0
/* 800690FC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80069100  38 61 00 98 */	addi r3, r1, 0x98
/* 80069104  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80069108  4B FA C2 09 */	bl mDoLib_project__FP3VecP3Vec
/* 8006910C  D3 C1 00 E8 */	stfs f30, 0xe8(r1)
/* 80069110  D3 C1 00 DC */	stfs f30, 0xdc(r1)
/* 80069114  38 61 00 E0 */	addi r3, r1, 0xe0
/* 80069118  38 81 00 D4 */	addi r4, r1, 0xd4
/* 8006911C  48 2D E2 81 */	bl PSVECSquareDistance
/* 80069120  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80069124  40 81 00 58 */	ble lbl_8006917C
/* 80069128  FC 00 08 34 */	frsqrte f0, f1
/* 8006912C  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 80069130  FC 44 00 32 */	fmul f2, f4, f0
/* 80069134  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 80069138  FC 00 00 32 */	fmul f0, f0, f0
/* 8006913C  FC 01 00 32 */	fmul f0, f1, f0
/* 80069140  FC 03 00 28 */	fsub f0, f3, f0
/* 80069144  FC 02 00 32 */	fmul f0, f2, f0
/* 80069148  FC 44 00 32 */	fmul f2, f4, f0
/* 8006914C  FC 00 00 32 */	fmul f0, f0, f0
/* 80069150  FC 01 00 32 */	fmul f0, f1, f0
/* 80069154  FC 03 00 28 */	fsub f0, f3, f0
/* 80069158  FC 02 00 32 */	fmul f0, f2, f0
/* 8006915C  FC 44 00 32 */	fmul f2, f4, f0
/* 80069160  FC 00 00 32 */	fmul f0, f0, f0
/* 80069164  FC 01 00 32 */	fmul f0, f1, f0
/* 80069168  FC 03 00 28 */	fsub f0, f3, f0
/* 8006916C  FC 02 00 32 */	fmul f0, f2, f0
/* 80069170  FE 81 00 32 */	fmul f20, f1, f0
/* 80069174  FE 80 A0 18 */	frsp f20, f20
/* 80069178  48 00 00 90 */	b lbl_80069208
lbl_8006917C:
/* 8006917C  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 80069180  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80069184  40 80 00 10 */	bge lbl_80069194
/* 80069188  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8006918C  C2 83 0A E0 */	lfs f20, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80069190  48 00 00 78 */	b lbl_80069208
lbl_80069194:
/* 80069194  D0 21 00 08 */	stfs f1, 8(r1)
/* 80069198  80 81 00 08 */	lwz r4, 8(r1)
/* 8006919C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800691A0  3C 00 7F 80 */	lis r0, 0x7f80
/* 800691A4  7C 03 00 00 */	cmpw r3, r0
/* 800691A8  41 82 00 14 */	beq lbl_800691BC
/* 800691AC  40 80 00 40 */	bge lbl_800691EC
/* 800691B0  2C 03 00 00 */	cmpwi r3, 0
/* 800691B4  41 82 00 20 */	beq lbl_800691D4
/* 800691B8  48 00 00 34 */	b lbl_800691EC
lbl_800691BC:
/* 800691BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800691C0  41 82 00 0C */	beq lbl_800691CC
/* 800691C4  38 00 00 01 */	li r0, 1
/* 800691C8  48 00 00 28 */	b lbl_800691F0
lbl_800691CC:
/* 800691CC  38 00 00 02 */	li r0, 2
/* 800691D0  48 00 00 20 */	b lbl_800691F0
lbl_800691D4:
/* 800691D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800691D8  41 82 00 0C */	beq lbl_800691E4
/* 800691DC  38 00 00 05 */	li r0, 5
/* 800691E0  48 00 00 10 */	b lbl_800691F0
lbl_800691E4:
/* 800691E4  38 00 00 03 */	li r0, 3
/* 800691E8  48 00 00 08 */	b lbl_800691F0
lbl_800691EC:
/* 800691EC  38 00 00 04 */	li r0, 4
lbl_800691F0:
/* 800691F0  2C 00 00 01 */	cmpwi r0, 1
/* 800691F4  40 82 00 10 */	bne lbl_80069204
/* 800691F8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800691FC  C2 83 0A E0 */	lfs f20, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80069200  48 00 00 08 */	b lbl_80069208
lbl_80069204:
/* 80069204  FE 80 08 90 */	fmr f20, f1
lbl_80069208:
/* 80069208  28 18 00 00 */	cmplwi r24, 0
/* 8006920C  41 82 00 0C */	beq lbl_80069218
/* 80069210  FE 60 C8 90 */	fmr f19, f25
/* 80069214  48 00 00 08 */	b lbl_8006921C
lbl_80069218:
/* 80069218  FE 60 C0 90 */	fmr f19, f24
lbl_8006921C:
/* 8006921C  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 80069220  57 40 E8 04 */	slwi r0, r26, 0x1d
/* 80069224  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80069228  7C 03 00 50 */	subf r0, r3, r0
/* 8006922C  54 00 18 3E */	rotlwi r0, r0, 3
/* 80069230  7F 40 1A 14 */	add r26, r0, r3
/* 80069234  7E 83 A3 78 */	mr r3, r20
/* 80069238  48 13 67 D1 */	bl getDaytime__18dScnKy_env_light_cFv
/* 8006923C  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 80069240  40 80 00 18 */	bge lbl_80069258
/* 80069244  2C 1A 00 00 */	cmpwi r26, 0
/* 80069248  41 82 00 0C */	beq lbl_80069254
/* 8006924C  3B 5A FF FF */	addi r26, r26, -1
/* 80069250  48 00 00 08 */	b lbl_80069258
lbl_80069254:
/* 80069254  3B 40 00 07 */	li r26, 7
lbl_80069258:
/* 80069258  2C 1A 00 04 */	cmpwi r26, 4
/* 8006925C  40 82 00 10 */	bne lbl_8006926C
/* 80069260  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80069264  40 82 00 08 */	bne lbl_8006926C
/* 80069268  C2 62 87 B8 */	lfs f19, lit_3954(r2)
lbl_8006926C:
/* 8006926C  FC 14 98 40 */	fcmpo cr0, f20, f19
/* 80069270  40 81 02 00 */	ble lbl_80069470
/* 80069274  38 60 00 90 */	li r3, 0x90
/* 80069278  38 80 00 00 */	li r4, 0
/* 8006927C  38 A0 00 03 */	li r5, 3
/* 80069280  48 2F 34 E5 */	bl GXBegin
/* 80069284  C0 61 00 98 */	lfs f3, 0x98(r1)
/* 80069288  C0 01 01 58 */	lfs f0, 0x158(r1)
/* 8006928C  C0 41 00 EC */	lfs f2, 0xec(r1)
/* 80069290  EC 00 10 28 */	fsubs f0, f0, f2
/* 80069294  EC 15 00 32 */	fmuls f0, f21, f0
/* 80069298  EC 03 00 2A */	fadds f0, f3, f0
/* 8006929C  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 800692A0  D0 03 80 00 */	stfs f0, 0x8000(r3)  /* 0xCC008000@l */
/* 800692A4  C0 81 00 9C */	lfs f4, 0x9c(r1)
/* 800692A8  C0 01 01 5C */	lfs f0, 0x15c(r1)
/* 800692AC  C0 21 00 F0 */	lfs f1, 0xf0(r1)
/* 800692B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 800692B4  EC 15 00 32 */	fmuls f0, f21, f0
/* 800692B8  EC 04 00 2A */	fadds f0, f4, f0
/* 800692BC  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 800692C0  C0 A1 00 A0 */	lfs f5, 0xa0(r1)
/* 800692C4  C0 81 01 60 */	lfs f4, 0x160(r1)
/* 800692C8  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 800692CC  EC 84 00 28 */	fsubs f4, f4, f0
/* 800692D0  EC 95 01 32 */	fmuls f4, f21, f4
/* 800692D4  EC 85 20 2A */	fadds f4, f5, f4
/* 800692D8  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 800692DC  C0 81 01 64 */	lfs f4, 0x164(r1)
/* 800692E0  EC 84 10 28 */	fsubs f4, f4, f2
/* 800692E4  EC 95 01 32 */	fmuls f4, f21, f4
/* 800692E8  EC 83 20 2A */	fadds f4, f3, f4
/* 800692EC  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 800692F0  C0 A1 00 9C */	lfs f5, 0x9c(r1)
/* 800692F4  C0 81 01 68 */	lfs f4, 0x168(r1)
/* 800692F8  EC 84 08 28 */	fsubs f4, f4, f1
/* 800692FC  EC 95 01 32 */	fmuls f4, f21, f4
/* 80069300  EC 85 20 2A */	fadds f4, f5, f4
/* 80069304  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 80069308  C0 A1 00 A0 */	lfs f5, 0xa0(r1)
/* 8006930C  C0 81 01 6C */	lfs f4, 0x16c(r1)
/* 80069310  EC 84 00 28 */	fsubs f4, f4, f0
/* 80069314  EC 95 01 32 */	fmuls f4, f21, f4
/* 80069318  EC 85 20 2A */	fadds f4, f5, f4
/* 8006931C  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 80069320  C0 81 01 70 */	lfs f4, 0x170(r1)
/* 80069324  EC 84 10 28 */	fsubs f4, f4, f2
/* 80069328  EC 95 01 32 */	fmuls f4, f21, f4
/* 8006932C  EC 63 20 2A */	fadds f3, f3, f4
/* 80069330  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 80069334  C0 81 00 9C */	lfs f4, 0x9c(r1)
/* 80069338  C0 61 01 74 */	lfs f3, 0x174(r1)
/* 8006933C  EC 63 08 28 */	fsubs f3, f3, f1
/* 80069340  EC 75 00 F2 */	fmuls f3, f21, f3
/* 80069344  EC 64 18 2A */	fadds f3, f4, f3
/* 80069348  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 8006934C  C0 81 00 A0 */	lfs f4, 0xa0(r1)
/* 80069350  C0 61 01 78 */	lfs f3, 0x178(r1)
/* 80069354  EC 63 00 28 */	fsubs f3, f3, f0
/* 80069358  EC 75 00 F2 */	fmuls f3, f21, f3
/* 8006935C  EC 64 18 2A */	fadds f3, f4, f3
/* 80069360  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 80069364  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80069368  41 82 01 08 */	beq lbl_80069470
/* 8006936C  C0 61 00 A4 */	lfs f3, 0xa4(r1)
/* 80069370  EC 42 18 2A */	fadds f2, f2, f3
/* 80069374  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 80069378  C0 41 00 A8 */	lfs f2, 0xa8(r1)
/* 8006937C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80069380  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 80069384  C0 21 00 AC */	lfs f1, 0xac(r1)
/* 80069388  EC 00 08 2A */	fadds f0, f0, f1
/* 8006938C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80069390  38 60 00 90 */	li r3, 0x90
/* 80069394  38 80 00 00 */	li r4, 0
/* 80069398  38 A0 00 03 */	li r5, 3
/* 8006939C  48 2F 33 C9 */	bl GXBegin
/* 800693A0  C0 A1 00 8C */	lfs f5, 0x8c(r1)
/* 800693A4  C0 01 01 58 */	lfs f0, 0x158(r1)
/* 800693A8  C0 81 00 EC */	lfs f4, 0xec(r1)
/* 800693AC  EC 00 20 28 */	fsubs f0, f0, f4
/* 800693B0  EC 15 00 32 */	fmuls f0, f21, f0
/* 800693B4  EC 05 00 2A */	fadds f0, f5, f0
/* 800693B8  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 800693BC  D0 03 80 00 */	stfs f0, 0x8000(r3)  /* 0xCC008000@l */
/* 800693C0  C0 61 00 90 */	lfs f3, 0x90(r1)
/* 800693C4  C0 01 01 5C */	lfs f0, 0x15c(r1)
/* 800693C8  C0 41 00 F0 */	lfs f2, 0xf0(r1)
/* 800693CC  EC 00 10 28 */	fsubs f0, f0, f2
/* 800693D0  EC 15 00 32 */	fmuls f0, f21, f0
/* 800693D4  EC 03 00 2A */	fadds f0, f3, f0
/* 800693D8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 800693DC  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 800693E0  C0 C1 01 60 */	lfs f6, 0x160(r1)
/* 800693E4  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 800693E8  EC C6 00 28 */	fsubs f6, f6, f0
/* 800693EC  EC D5 01 B2 */	fmuls f6, f21, f6
/* 800693F0  EC C1 30 2A */	fadds f6, f1, f6
/* 800693F4  D0 C3 80 00 */	stfs f6, -0x8000(r3)
/* 800693F8  C0 C1 01 64 */	lfs f6, 0x164(r1)
/* 800693FC  EC C6 20 28 */	fsubs f6, f6, f4
/* 80069400  EC D5 01 B2 */	fmuls f6, f21, f6
/* 80069404  EC C5 30 2A */	fadds f6, f5, f6
/* 80069408  D0 C3 80 00 */	stfs f6, -0x8000(r3)
/* 8006940C  C0 C1 01 68 */	lfs f6, 0x168(r1)
/* 80069410  EC C6 10 28 */	fsubs f6, f6, f2
/* 80069414  EC D5 01 B2 */	fmuls f6, f21, f6
/* 80069418  EC C3 30 2A */	fadds f6, f3, f6
/* 8006941C  D0 C3 80 00 */	stfs f6, -0x8000(r3)
/* 80069420  C0 C1 01 6C */	lfs f6, 0x16c(r1)
/* 80069424  EC C6 00 28 */	fsubs f6, f6, f0
/* 80069428  EC D5 01 B2 */	fmuls f6, f21, f6
/* 8006942C  EC C1 30 2A */	fadds f6, f1, f6
/* 80069430  D0 C3 80 00 */	stfs f6, -0x8000(r3)
/* 80069434  C0 C1 01 70 */	lfs f6, 0x170(r1)
/* 80069438  EC 86 20 28 */	fsubs f4, f6, f4
/* 8006943C  EC 95 01 32 */	fmuls f4, f21, f4
/* 80069440  EC 85 20 2A */	fadds f4, f5, f4
/* 80069444  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 80069448  C0 81 01 74 */	lfs f4, 0x174(r1)
/* 8006944C  EC 44 10 28 */	fsubs f2, f4, f2
/* 80069450  EC 55 00 B2 */	fmuls f2, f21, f2
/* 80069454  EC 43 10 2A */	fadds f2, f3, f2
/* 80069458  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8006945C  C0 41 01 78 */	lfs f2, 0x178(r1)
/* 80069460  EC 02 00 28 */	fsubs f0, f2, f0
/* 80069464  EC 15 00 32 */	fmuls f0, f21, f0
/* 80069468  EC 01 00 2A */	fadds f0, f1, f0
/* 8006946C  D0 03 80 00 */	stfs f0, -0x8000(r3)
lbl_80069470:
/* 80069470  3A D6 00 01 */	addi r22, r22, 1
/* 80069474  3A B5 00 06 */	addi r21, r21, 6
lbl_80069478:
/* 80069478  A8 1D 00 48 */	lha r0, 0x48(r29)
/* 8006947C  7C 16 00 00 */	cmpw r22, r0
/* 80069480  41 80 FA 34 */	blt lbl_80068EB4
/* 80069484  38 00 00 00 */	li r0, 0
/* 80069488  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
lbl_8006948C:
/* 8006948C  E3 E1 02 A8 */	psq_l f31, 680(r1), 0, 0 /* qr0 */
/* 80069490  CB E1 02 A0 */	lfd f31, 0x2a0(r1)
/* 80069494  E3 C1 02 98 */	psq_l f30, 664(r1), 0, 0 /* qr0 */
/* 80069498  CB C1 02 90 */	lfd f30, 0x290(r1)
/* 8006949C  E3 A1 02 88 */	psq_l f29, 648(r1), 0, 0 /* qr0 */
/* 800694A0  CB A1 02 80 */	lfd f29, 0x280(r1)
/* 800694A4  E3 81 02 78 */	psq_l f28, 632(r1), 0, 0 /* qr0 */
/* 800694A8  CB 81 02 70 */	lfd f28, 0x270(r1)
/* 800694AC  E3 61 02 68 */	psq_l f27, 616(r1), 0, 0 /* qr0 */
/* 800694B0  CB 61 02 60 */	lfd f27, 0x260(r1)
/* 800694B4  E3 41 02 58 */	psq_l f26, 600(r1), 0, 0 /* qr0 */
/* 800694B8  CB 41 02 50 */	lfd f26, 0x250(r1)
/* 800694BC  E3 21 02 48 */	psq_l f25, 584(r1), 0, 0 /* qr0 */
/* 800694C0  CB 21 02 40 */	lfd f25, 0x240(r1)
/* 800694C4  E3 01 02 38 */	psq_l f24, 568(r1), 0, 0 /* qr0 */
/* 800694C8  CB 01 02 30 */	lfd f24, 0x230(r1)
/* 800694CC  E2 E1 02 28 */	psq_l f23, 552(r1), 0, 0 /* qr0 */
/* 800694D0  CA E1 02 20 */	lfd f23, 0x220(r1)
/* 800694D4  E2 C1 02 18 */	psq_l f22, 536(r1), 0, 0 /* qr0 */
/* 800694D8  CA C1 02 10 */	lfd f22, 0x210(r1)
/* 800694DC  E2 A1 02 08 */	psq_l f21, 520(r1), 0, 0 /* qr0 */
/* 800694E0  CA A1 02 00 */	lfd f21, 0x200(r1)
/* 800694E4  E2 81 01 F8 */	psq_l f20, 504(r1), 0, 0 /* qr0 */
/* 800694E8  CA 81 01 F0 */	lfd f20, 0x1f0(r1)
/* 800694EC  E2 61 01 E8 */	psq_l f19, 488(r1), 0, 0 /* qr0 */
/* 800694F0  CA 61 01 E0 */	lfd f19, 0x1e0(r1)
/* 800694F4  39 61 01 E0 */	addi r11, r1, 0x1e0
/* 800694F8  48 2F 8D 0D */	bl _restgpr_20
/* 800694FC  80 01 02 B4 */	lwz r0, 0x2b4(r1)
/* 80069500  7C 08 03 A6 */	mtlr r0
/* 80069504  38 21 02 B0 */	addi r1, r1, 0x2b0
/* 80069508  4E 80 00 20 */	blr 
