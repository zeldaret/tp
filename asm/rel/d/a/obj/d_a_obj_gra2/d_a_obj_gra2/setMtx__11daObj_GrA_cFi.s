lbl_80C01FE8:
/* 80C01FE8  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80C01FEC  7C 08 02 A6 */	mflr r0
/* 80C01FF0  90 01 01 04 */	stw r0, 0x104(r1)
/* 80C01FF4  39 61 01 00 */	addi r11, r1, 0x100
/* 80C01FF8  4B 76 01 DC */	b _savegpr_27
/* 80C01FFC  7C 7D 1B 78 */	mr r29, r3
/* 80C02000  7C 9C 23 78 */	mr r28, r4
/* 80C02004  3C 60 80 C1 */	lis r3, lit_1109@ha
/* 80C02008  3B C3 08 A0 */	addi r30, r3, lit_1109@l
/* 80C0200C  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha
/* 80C02010  3B E3 FA 7C */	addi r31, r3, m__17daObj_GrA_Param_c@l
/* 80C02014  88 1E 00 74 */	lbz r0, 0x74(r30)
/* 80C02018  7C 00 07 75 */	extsb. r0, r0
/* 80C0201C  40 82 03 84 */	bne lbl_80C023A0
/* 80C02020  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C02024  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80C02028  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80C0202C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80C02030  D0 1E 01 20 */	stfs f0, 0x120(r30)
/* 80C02034  38 7E 01 20 */	addi r3, r30, 0x120
/* 80C02038  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C0203C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C02040  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C02044  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C02048  38 BE 00 68 */	addi r5, r30, 0x68
/* 80C0204C  4B FF DE 4D */	bl __register_global_object
/* 80C02050  C0 5F 01 68 */	lfs f2, 0x168(r31)
/* 80C02054  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 80C02058  C0 3F 01 6C */	lfs f1, 0x16c(r31)
/* 80C0205C  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 80C02060  C0 1F 01 70 */	lfs f0, 0x170(r31)
/* 80C02064  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80C02068  38 7E 01 20 */	addi r3, r30, 0x120
/* 80C0206C  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80C02070  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80C02074  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80C02078  38 63 00 0C */	addi r3, r3, 0xc
/* 80C0207C  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C02080  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C02084  38 BE 00 78 */	addi r5, r30, 0x78
/* 80C02088  4B FF DE 11 */	bl __register_global_object
/* 80C0208C  C0 5F 01 74 */	lfs f2, 0x174(r31)
/* 80C02090  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 80C02094  C0 3F 01 78 */	lfs f1, 0x178(r31)
/* 80C02098  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 80C0209C  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 80C020A0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80C020A4  38 7E 01 20 */	addi r3, r30, 0x120
/* 80C020A8  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 80C020AC  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80C020B0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C020B4  38 63 00 18 */	addi r3, r3, 0x18
/* 80C020B8  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C020BC  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C020C0  38 BE 00 84 */	addi r5, r30, 0x84
/* 80C020C4  4B FF DD D5 */	bl __register_global_object
/* 80C020C8  C0 5F 01 80 */	lfs f2, 0x180(r31)
/* 80C020CC  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 80C020D0  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 80C020D4  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 80C020D8  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 80C020DC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80C020E0  38 7E 01 20 */	addi r3, r30, 0x120
/* 80C020E4  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80C020E8  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80C020EC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80C020F0  38 63 00 24 */	addi r3, r3, 0x24
/* 80C020F4  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C020F8  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C020FC  38 BE 00 90 */	addi r5, r30, 0x90
/* 80C02100  4B FF DD 99 */	bl __register_global_object
/* 80C02104  C0 5F 01 8C */	lfs f2, 0x18c(r31)
/* 80C02108  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 80C0210C  C0 3F 01 90 */	lfs f1, 0x190(r31)
/* 80C02110  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80C02114  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 80C02118  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C0211C  38 7E 01 20 */	addi r3, r30, 0x120
/* 80C02120  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 80C02124  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 80C02128  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80C0212C  38 63 00 30 */	addi r3, r3, 0x30
/* 80C02130  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C02134  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C02138  38 BE 00 9C */	addi r5, r30, 0x9c
/* 80C0213C  4B FF DD 5D */	bl __register_global_object
/* 80C02140  C0 5F 01 98 */	lfs f2, 0x198(r31)
/* 80C02144  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 80C02148  C0 3F 01 9C */	lfs f1, 0x19c(r31)
/* 80C0214C  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80C02150  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 80C02154  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80C02158  38 7E 01 20 */	addi r3, r30, 0x120
/* 80C0215C  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 80C02160  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 80C02164  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80C02168  38 63 00 3C */	addi r3, r3, 0x3c
/* 80C0216C  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C02170  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C02174  38 BE 00 A8 */	addi r5, r30, 0xa8
/* 80C02178  4B FF DD 21 */	bl __register_global_object
/* 80C0217C  C0 5F 01 A4 */	lfs f2, 0x1a4(r31)
/* 80C02180  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80C02184  C0 3F 01 A8 */	lfs f1, 0x1a8(r31)
/* 80C02188  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80C0218C  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 80C02190  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C02194  38 7E 01 20 */	addi r3, r30, 0x120
/* 80C02198  D0 43 00 48 */	stfs f2, 0x48(r3)
/* 80C0219C  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 80C021A0  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 80C021A4  38 63 00 48 */	addi r3, r3, 0x48
/* 80C021A8  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C021AC  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C021B0  38 BE 00 B4 */	addi r5, r30, 0xb4
/* 80C021B4  4B FF DC E5 */	bl __register_global_object
/* 80C021B8  C0 5F 01 B0 */	lfs f2, 0x1b0(r31)
/* 80C021BC  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80C021C0  C0 3F 01 B4 */	lfs f1, 0x1b4(r31)
/* 80C021C4  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80C021C8  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80C021CC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80C021D0  38 7E 01 20 */	addi r3, r30, 0x120
/* 80C021D4  D0 43 00 54 */	stfs f2, 0x54(r3)
/* 80C021D8  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 80C021DC  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 80C021E0  38 63 00 54 */	addi r3, r3, 0x54
/* 80C021E4  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C021E8  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C021EC  38 BE 00 C0 */	addi r5, r30, 0xc0
/* 80C021F0  4B FF DC A9 */	bl __register_global_object
/* 80C021F4  C0 5F 01 BC */	lfs f2, 0x1bc(r31)
/* 80C021F8  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80C021FC  C0 3F 01 C0 */	lfs f1, 0x1c0(r31)
/* 80C02200  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80C02204  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 80C02208  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C0220C  38 7E 01 20 */	addi r3, r30, 0x120
/* 80C02210  D0 43 00 60 */	stfs f2, 0x60(r3)
/* 80C02214  D0 23 00 64 */	stfs f1, 0x64(r3)
/* 80C02218  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 80C0221C  38 63 00 60 */	addi r3, r3, 0x60
/* 80C02220  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C02224  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C02228  38 BE 00 CC */	addi r5, r30, 0xcc
/* 80C0222C  4B FF DC 6D */	bl __register_global_object
/* 80C02230  C0 5F 01 C8 */	lfs f2, 0x1c8(r31)
/* 80C02234  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80C02238  C0 3F 01 CC */	lfs f1, 0x1cc(r31)
/* 80C0223C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80C02240  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 80C02244  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C02248  38 7E 01 20 */	addi r3, r30, 0x120
/* 80C0224C  D0 43 00 6C */	stfs f2, 0x6c(r3)
/* 80C02250  D0 23 00 70 */	stfs f1, 0x70(r3)
/* 80C02254  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 80C02258  38 63 00 6C */	addi r3, r3, 0x6c
/* 80C0225C  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C02260  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C02264  38 BE 00 D8 */	addi r5, r30, 0xd8
/* 80C02268  4B FF DC 31 */	bl __register_global_object
/* 80C0226C  C0 5F 01 D4 */	lfs f2, 0x1d4(r31)
/* 80C02270  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80C02274  C0 3F 01 D8 */	lfs f1, 0x1d8(r31)
/* 80C02278  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80C0227C  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 80C02280  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C02284  38 7E 01 20 */	addi r3, r30, 0x120
/* 80C02288  D0 43 00 78 */	stfs f2, 0x78(r3)
/* 80C0228C  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 80C02290  D0 03 00 80 */	stfs f0, 0x80(r3)
/* 80C02294  38 63 00 78 */	addi r3, r3, 0x78
/* 80C02298  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C0229C  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C022A0  38 BE 00 E4 */	addi r5, r30, 0xe4
/* 80C022A4  4B FF DB F5 */	bl __register_global_object
/* 80C022A8  C0 5F 01 E0 */	lfs f2, 0x1e0(r31)
/* 80C022AC  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80C022B0  C0 3F 01 E4 */	lfs f1, 0x1e4(r31)
/* 80C022B4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80C022B8  C0 1F 01 E8 */	lfs f0, 0x1e8(r31)
/* 80C022BC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C022C0  38 7E 01 20 */	addi r3, r30, 0x120
/* 80C022C4  D0 43 00 84 */	stfs f2, 0x84(r3)
/* 80C022C8  D0 23 00 88 */	stfs f1, 0x88(r3)
/* 80C022CC  D0 03 00 8C */	stfs f0, 0x8c(r3)
/* 80C022D0  38 63 00 84 */	addi r3, r3, 0x84
/* 80C022D4  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C022D8  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C022DC  38 BE 00 F0 */	addi r5, r30, 0xf0
/* 80C022E0  4B FF DB B9 */	bl __register_global_object
/* 80C022E4  C0 5F 01 EC */	lfs f2, 0x1ec(r31)
/* 80C022E8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80C022EC  C0 3F 01 F0 */	lfs f1, 0x1f0(r31)
/* 80C022F0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C022F4  C0 1F 01 F4 */	lfs f0, 0x1f4(r31)
/* 80C022F8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C022FC  38 7E 01 20 */	addi r3, r30, 0x120
/* 80C02300  D0 43 00 90 */	stfs f2, 0x90(r3)
/* 80C02304  D0 23 00 94 */	stfs f1, 0x94(r3)
/* 80C02308  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 80C0230C  38 63 00 90 */	addi r3, r3, 0x90
/* 80C02310  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C02314  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C02318  38 BE 00 FC */	addi r5, r30, 0xfc
/* 80C0231C  4B FF DB 7D */	bl __register_global_object
/* 80C02320  C0 5F 01 F8 */	lfs f2, 0x1f8(r31)
/* 80C02324  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80C02328  C0 3F 01 FC */	lfs f1, 0x1fc(r31)
/* 80C0232C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C02330  C0 1F 02 00 */	lfs f0, 0x200(r31)
/* 80C02334  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C02338  38 7E 01 20 */	addi r3, r30, 0x120
/* 80C0233C  D0 43 00 9C */	stfs f2, 0x9c(r3)
/* 80C02340  D0 23 00 A0 */	stfs f1, 0xa0(r3)
/* 80C02344  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80C02348  38 63 00 9C */	addi r3, r3, 0x9c
/* 80C0234C  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C02350  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C02354  38 BE 01 08 */	addi r5, r30, 0x108
/* 80C02358  4B FF DB 41 */	bl __register_global_object
/* 80C0235C  C0 5F 02 04 */	lfs f2, 0x204(r31)
/* 80C02360  D0 41 00 08 */	stfs f2, 8(r1)
/* 80C02364  C0 3F 02 08 */	lfs f1, 0x208(r31)
/* 80C02368  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C0236C  C0 1F 02 0C */	lfs f0, 0x20c(r31)
/* 80C02370  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C02374  38 7E 01 20 */	addi r3, r30, 0x120
/* 80C02378  D0 43 00 A8 */	stfs f2, 0xa8(r3)
/* 80C0237C  D0 23 00 AC */	stfs f1, 0xac(r3)
/* 80C02380  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80C02384  38 63 00 A8 */	addi r3, r3, 0xa8
/* 80C02388  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C0238C  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C02390  38 BE 01 14 */	addi r5, r30, 0x114
/* 80C02394  4B FF DB 05 */	bl __register_global_object
/* 80C02398  38 00 00 01 */	li r0, 1
/* 80C0239C  98 1E 00 74 */	stb r0, 0x74(r30)
lbl_80C023A0:
/* 80C023A0  80 7D 07 54 */	lwz r3, 0x754(r29)
/* 80C023A4  83 63 00 04 */	lwz r27, 4(r3)
/* 80C023A8  80 BB 00 04 */	lwz r5, 4(r27)
/* 80C023AC  38 C0 00 00 */	li r6, 0
/* 80C023B0  3C 60 80 C0 */	lis r3, jointCtrlCallBack__FP8J3DJointi@ha
/* 80C023B4  38 83 FF 0C */	addi r4, r3, jointCtrlCallBack__FP8J3DJointi@l
/* 80C023B8  48 00 00 18 */	b lbl_80C023D0
lbl_80C023BC:
/* 80C023BC  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80C023C0  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80C023C4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C023C8  90 83 00 04 */	stw r4, 4(r3)
/* 80C023CC  38 C6 00 01 */	addi r6, r6, 1
lbl_80C023D0:
/* 80C023D0  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80C023D4  A0 05 00 2C */	lhz r0, 0x2c(r5)
/* 80C023D8  7C 03 00 40 */	cmplw r3, r0
/* 80C023DC  41 80 FF E0 */	blt lbl_80C023BC
/* 80C023E0  80 1D 10 9C */	lwz r0, 0x109c(r29)
/* 80C023E4  2C 00 00 00 */	cmpwi r0, 0
/* 80C023E8  41 82 01 0C */	beq lbl_80C024F4
/* 80C023EC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80C023F0  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80C023F4  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80C023F8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C023FC  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80C02400  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C02404  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80C02408  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C0240C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C02410  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C02414  FC 40 08 90 */	fmr f2, f1
/* 80C02418  FC 60 08 90 */	fmr f3, f1
/* 80C0241C  4B 74 44 CC */	b PSMTXTrans
/* 80C02420  38 7D 09 1A */	addi r3, r29, 0x91a
/* 80C02424  4B 40 AB 20 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C02428  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 80C0242C  80 9D 10 A0 */	lwz r4, 0x10a0(r29)
/* 80C02430  38 60 00 0F */	li r3, 0xf
/* 80C02434  7C 04 1B D6 */	divw r0, r4, r3
/* 80C02438  7C 00 19 D6 */	mullw r0, r0, r3
/* 80C0243C  7C 00 20 50 */	subf r0, r0, r4
/* 80C02440  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C02444  38 7E 01 20 */	addi r3, r30, 0x120
/* 80C02448  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C0244C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C02450  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80C02454  C0 21 00 D8 */	lfs f1, 0xd8(r1)
/* 80C02458  7C 63 02 14 */	add r3, r3, r0
/* 80C0245C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C02460  EC 01 00 2A */	fadds f0, f1, f0
/* 80C02464  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80C02468  C0 21 00 DC */	lfs f1, 0xdc(r1)
/* 80C0246C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C02470  EC 01 00 2A */	fadds f0, f1, f0
/* 80C02474  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80C02478  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80C0247C  4B 40 A9 58 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80C02480  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C02484  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C02488  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80C0248C  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 80C02490  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 80C02494  D0 41 00 D8 */	stfs f2, 0xd8(r1)
/* 80C02498  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 80C0249C  D0 61 00 DC */	stfs f3, 0xdc(r1)
/* 80C024A0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C024A4  EC 20 08 2A */	fadds f1, f0, f1
/* 80C024A8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C024AC  EC 40 10 2A */	fadds f2, f0, f2
/* 80C024B0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C024B4  EC 60 18 2A */	fadds f3, f0, f3
/* 80C024B8  4B 74 44 30 */	b PSMTXTrans
/* 80C024BC  38 7D 09 1A */	addi r3, r29, 0x91a
/* 80C024C0  4B 40 AA 84 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C024C4  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 80C024C8  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80C024CC  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 80C024D0  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80C024D4  C0 1D 04 F4 */	lfs f0, 0x4f4(r29)
/* 80C024D8  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80C024DC  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80C024E0  4B 40 A9 90 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80C024E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C024E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C024EC  38 9D 0A 18 */	addi r4, r29, 0xa18
/* 80C024F0  4B 74 3F C0 */	b PSMTXCopy
lbl_80C024F4:
/* 80C024F4  80 1D 10 9C */	lwz r0, 0x109c(r29)
/* 80C024F8  2C 00 00 00 */	cmpwi r0, 0
/* 80C024FC  41 82 00 94 */	beq lbl_80C02590
/* 80C02500  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C02504  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C02508  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C0250C  FC 40 08 90 */	fmr f2, f1
/* 80C02510  FC 60 08 90 */	fmr f3, f1
/* 80C02514  4B 74 43 D4 */	b PSMTXTrans
/* 80C02518  38 7D 09 1A */	addi r3, r29, 0x91a
/* 80C0251C  4B 40 AA 28 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C02520  80 9D 10 A0 */	lwz r4, 0x10a0(r29)
/* 80C02524  38 60 00 0F */	li r3, 0xf
/* 80C02528  7C 04 1B D6 */	divw r0, r4, r3
/* 80C0252C  7C 00 19 D6 */	mullw r0, r0, r3
/* 80C02530  7C 00 20 50 */	subf r0, r0, r4
/* 80C02534  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C02538  38 7E 01 20 */	addi r3, r30, 0x120
/* 80C0253C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C02540  7C 63 02 14 */	add r3, r3, r0
/* 80C02544  C0 43 00 04 */	lfs f2, 4(r3)
/* 80C02548  C0 63 00 08 */	lfs f3, 8(r3)
/* 80C0254C  4B 40 A8 50 */	b transM__14mDoMtx_stack_cFfff
/* 80C02550  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C02554  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C02558  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80C0255C  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 80C02560  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 80C02564  D0 41 00 C0 */	stfs f2, 0xc0(r1)
/* 80C02568  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 80C0256C  D0 61 00 C4 */	stfs f3, 0xc4(r1)
/* 80C02570  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C02574  EC 20 08 2A */	fadds f1, f0, f1
/* 80C02578  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C0257C  EC 40 10 2A */	fadds f2, f0, f2
/* 80C02580  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C02584  EC 60 18 2A */	fadds f3, f0, f3
/* 80C02588  4B 74 43 60 */	b PSMTXTrans
/* 80C0258C  48 00 00 0C */	b lbl_80C02598
lbl_80C02590:
/* 80C02590  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C02594  4B 40 A7 D0 */	b transS__14mDoMtx_stack_cFRC4cXyz
lbl_80C02598:
/* 80C02598  38 7D 09 1A */	addi r3, r29, 0x91a
/* 80C0259C  4B 40 A9 A8 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C025A0  38 7D 04 EC */	addi r3, r29, 0x4ec
/* 80C025A4  4B 40 A8 CC */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80C025A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C025AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C025B0  38 9B 00 24 */	addi r4, r27, 0x24
/* 80C025B4  4B 74 3E FC */	b PSMTXCopy
/* 80C025B8  2C 1C 00 00 */	cmpwi r28, 0
/* 80C025BC  41 82 00 0C */	beq lbl_80C025C8
/* 80C025C0  93 BB 00 14 */	stw r29, 0x14(r27)
/* 80C025C4  48 00 00 0C */	b lbl_80C025D0
lbl_80C025C8:
/* 80C025C8  38 00 00 00 */	li r0, 0
/* 80C025CC  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_80C025D0:
/* 80C025D0  A0 1D 08 40 */	lhz r0, 0x840(r29)
/* 80C025D4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C025D8  41 82 00 1C */	beq lbl_80C025F4
/* 80C025DC  C0 1D 07 FC */	lfs f0, 0x7fc(r29)
/* 80C025E0  80 7D 08 00 */	lwz r3, 0x800(r29)
/* 80C025E4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C025E8  80 7D 07 54 */	lwz r3, 0x754(r29)
/* 80C025EC  4B 40 EC 00 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80C025F0  48 00 00 0C */	b lbl_80C025FC
lbl_80C025F4:
/* 80C025F4  80 7D 07 54 */	lwz r3, 0x754(r29)
/* 80C025F8  4B 40 EB F4 */	b modelCalc__16mDoExt_McaMorfSOFv
lbl_80C025FC:
/* 80C025FC  39 61 01 00 */	addi r11, r1, 0x100
/* 80C02600  4B 75 FC 20 */	b _restgpr_27
/* 80C02604  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80C02608  7C 08 03 A6 */	mtlr r0
/* 80C0260C  38 21 01 00 */	addi r1, r1, 0x100
/* 80C02610  4E 80 00 20 */	blr 
