lbl_80C1E020:
/* 80C1E020  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 80C1E024  7C 08 02 A6 */	mflr r0
/* 80C1E028  90 01 01 74 */	stw r0, 0x174(r1)
/* 80C1E02C  39 61 01 70 */	addi r11, r1, 0x170
/* 80C1E030  4B 74 41 AD */	bl _savegpr_29
/* 80C1E034  7C 7E 1B 78 */	mr r30, r3
/* 80C1E038  7C 9D 23 78 */	mr r29, r4
/* 80C1E03C  3C 80 80 C2 */	lis r4, lit_1109@ha /* 0x80C1EF90@ha */
/* 80C1E040  3B E4 EF 90 */	addi r31, r4, lit_1109@l /* 0x80C1EF90@l */
/* 80C1E044  48 00 0A F5 */	bl mode_proc_call__11daObjFuta_cFv
/* 80C1E048  88 1F 00 4C */	lbz r0, 0x4c(r31)
/* 80C1E04C  7C 00 07 75 */	extsb. r0, r0
/* 80C1E050  40 82 0A 1C */	bne lbl_80C1EA6C
/* 80C1E054  38 61 01 58 */	addi r3, r1, 0x158
/* 80C1E058  38 80 FF F5 */	li r4, -11
/* 80C1E05C  38 A0 00 00 */	li r5, 0
/* 80C1E060  38 C0 03 83 */	li r6, 0x383
/* 80C1E064  4B 64 93 91 */	bl __ct__5csXyzFsss
/* 80C1E068  80 01 01 58 */	lwz r0, 0x158(r1)
/* 80C1E06C  90 1F 02 48 */	stw r0, 0x248(r31)
/* 80C1E070  A0 01 01 5C */	lhz r0, 0x15c(r1)
/* 80C1E074  B0 1F 02 4C */	sth r0, 0x24c(r31)
/* 80C1E078  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E07C  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E080  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E084  38 BF 00 40 */	addi r5, r31, 0x40
/* 80C1E088  4B FF FC 91 */	bl __register_global_object
/* 80C1E08C  38 61 01 50 */	addi r3, r1, 0x150
/* 80C1E090  38 80 02 5A */	li r4, 0x25a
/* 80C1E094  38 A0 00 00 */	li r5, 0
/* 80C1E098  38 C0 02 81 */	li r6, 0x281
/* 80C1E09C  4B 64 93 59 */	bl __ct__5csXyzFsss
/* 80C1E0A0  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E0A4  80 01 01 50 */	lwz r0, 0x150(r1)
/* 80C1E0A8  90 03 00 06 */	stw r0, 6(r3)
/* 80C1E0AC  A0 01 01 54 */	lhz r0, 0x154(r1)
/* 80C1E0B0  B0 03 00 0A */	sth r0, 0xa(r3)
/* 80C1E0B4  38 63 00 06 */	addi r3, r3, 6
/* 80C1E0B8  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E0BC  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E0C0  38 BF 00 50 */	addi r5, r31, 0x50
/* 80C1E0C4  4B FF FC 55 */	bl __register_global_object
/* 80C1E0C8  38 61 01 48 */	addi r3, r1, 0x148
/* 80C1E0CC  38 80 03 5A */	li r4, 0x35a
/* 80C1E0D0  38 A0 00 00 */	li r5, 0
/* 80C1E0D4  38 C0 00 2A */	li r6, 0x2a
/* 80C1E0D8  4B 64 93 1D */	bl __ct__5csXyzFsss
/* 80C1E0DC  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E0E0  80 01 01 48 */	lwz r0, 0x148(r1)
/* 80C1E0E4  90 03 00 0C */	stw r0, 0xc(r3)
/* 80C1E0E8  A0 01 01 4C */	lhz r0, 0x14c(r1)
/* 80C1E0EC  B0 03 00 10 */	sth r0, 0x10(r3)
/* 80C1E0F0  38 63 00 0C */	addi r3, r3, 0xc
/* 80C1E0F4  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E0F8  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E0FC  38 BF 00 5C */	addi r5, r31, 0x5c
/* 80C1E100  4B FF FC 19 */	bl __register_global_object
/* 80C1E104  38 61 01 40 */	addi r3, r1, 0x140
/* 80C1E108  38 80 02 78 */	li r4, 0x278
/* 80C1E10C  38 A0 00 00 */	li r5, 0
/* 80C1E110  38 C0 FD D8 */	li r6, -552
/* 80C1E114  4B 64 92 E1 */	bl __ct__5csXyzFsss
/* 80C1E118  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E11C  80 01 01 40 */	lwz r0, 0x140(r1)
/* 80C1E120  90 03 00 12 */	stw r0, 0x12(r3)
/* 80C1E124  A0 01 01 44 */	lhz r0, 0x144(r1)
/* 80C1E128  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80C1E12C  38 63 00 12 */	addi r3, r3, 0x12
/* 80C1E130  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E134  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E138  38 BF 00 68 */	addi r5, r31, 0x68
/* 80C1E13C  4B FF FB DD */	bl __register_global_object
/* 80C1E140  38 61 01 38 */	addi r3, r1, 0x138
/* 80C1E144  38 80 00 46 */	li r4, 0x46
/* 80C1E148  38 A0 00 00 */	li r5, 0
/* 80C1E14C  38 C0 FC D0 */	li r6, -816
/* 80C1E150  4B 64 92 A5 */	bl __ct__5csXyzFsss
/* 80C1E154  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E158  80 01 01 38 */	lwz r0, 0x138(r1)
/* 80C1E15C  90 03 00 18 */	stw r0, 0x18(r3)
/* 80C1E160  A0 01 01 3C */	lhz r0, 0x13c(r1)
/* 80C1E164  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 80C1E168  38 63 00 18 */	addi r3, r3, 0x18
/* 80C1E16C  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E170  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E174  38 BF 00 74 */	addi r5, r31, 0x74
/* 80C1E178  4B FF FB A1 */	bl __register_global_object
/* 80C1E17C  38 61 01 30 */	addi r3, r1, 0x130
/* 80C1E180  38 80 FE 09 */	li r4, -503
/* 80C1E184  38 A0 00 00 */	li r5, 0
/* 80C1E188  38 C0 FD 93 */	li r6, -621
/* 80C1E18C  4B 64 92 69 */	bl __ct__5csXyzFsss
/* 80C1E190  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E194  80 01 01 30 */	lwz r0, 0x130(r1)
/* 80C1E198  90 03 00 1E */	stw r0, 0x1e(r3)
/* 80C1E19C  A0 01 01 34 */	lhz r0, 0x134(r1)
/* 80C1E1A0  B0 03 00 22 */	sth r0, 0x22(r3)
/* 80C1E1A4  38 63 00 1E */	addi r3, r3, 0x1e
/* 80C1E1A8  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E1AC  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E1B0  38 BF 00 80 */	addi r5, r31, 0x80
/* 80C1E1B4  4B FF FB 65 */	bl __register_global_object
/* 80C1E1B8  38 61 01 28 */	addi r3, r1, 0x128
/* 80C1E1BC  38 80 FC FA */	li r4, -774
/* 80C1E1C0  38 A0 00 00 */	li r5, 0
/* 80C1E1C4  38 C0 FF A1 */	li r6, -95
/* 80C1E1C8  4B 64 92 2D */	bl __ct__5csXyzFsss
/* 80C1E1CC  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E1D0  80 01 01 28 */	lwz r0, 0x128(r1)
/* 80C1E1D4  90 03 00 24 */	stw r0, 0x24(r3)
/* 80C1E1D8  A0 01 01 2C */	lhz r0, 0x12c(r1)
/* 80C1E1DC  B0 03 00 28 */	sth r0, 0x28(r3)
/* 80C1E1E0  38 63 00 24 */	addi r3, r3, 0x24
/* 80C1E1E4  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E1E8  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E1EC  38 BF 00 8C */	addi r5, r31, 0x8c
/* 80C1E1F0  4B FF FB 29 */	bl __register_global_object
/* 80C1E1F4  38 61 01 20 */	addi r3, r1, 0x120
/* 80C1E1F8  38 80 FD A1 */	li r4, -607
/* 80C1E1FC  38 A0 00 00 */	li r5, 0
/* 80C1E200  38 C0 01 C8 */	li r6, 0x1c8
/* 80C1E204  4B 64 91 F1 */	bl __ct__5csXyzFsss
/* 80C1E208  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E20C  80 01 01 20 */	lwz r0, 0x120(r1)
/* 80C1E210  90 03 00 2A */	stw r0, 0x2a(r3)
/* 80C1E214  A0 01 01 24 */	lhz r0, 0x124(r1)
/* 80C1E218  B0 03 00 2E */	sth r0, 0x2e(r3)
/* 80C1E21C  38 63 00 2A */	addi r3, r3, 0x2a
/* 80C1E220  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E224  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E228  38 BF 00 98 */	addi r5, r31, 0x98
/* 80C1E22C  4B FF FA ED */	bl __register_global_object
/* 80C1E230  38 61 01 18 */	addi r3, r1, 0x118
/* 80C1E234  38 80 FF 8B */	li r4, -117
/* 80C1E238  38 A0 00 00 */	li r5, 0
/* 80C1E23C  38 C0 02 DA */	li r6, 0x2da
/* 80C1E240  4B 64 91 B5 */	bl __ct__5csXyzFsss
/* 80C1E244  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E248  80 01 01 18 */	lwz r0, 0x118(r1)
/* 80C1E24C  90 03 00 30 */	stw r0, 0x30(r3)
/* 80C1E250  A0 01 01 1C */	lhz r0, 0x11c(r1)
/* 80C1E254  B0 03 00 34 */	sth r0, 0x34(r3)
/* 80C1E258  38 63 00 30 */	addi r3, r3, 0x30
/* 80C1E25C  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E260  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E264  38 BF 00 A4 */	addi r5, r31, 0xa4
/* 80C1E268  4B FF FA B1 */	bl __register_global_object
/* 80C1E26C  38 61 01 10 */	addi r3, r1, 0x110
/* 80C1E270  38 80 01 9A */	li r4, 0x19a
/* 80C1E274  38 A0 00 00 */	li r5, 0
/* 80C1E278  38 C0 02 4F */	li r6, 0x24f
/* 80C1E27C  4B 64 91 79 */	bl __ct__5csXyzFsss
/* 80C1E280  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E284  80 01 01 10 */	lwz r0, 0x110(r1)
/* 80C1E288  90 03 00 36 */	stw r0, 0x36(r3)
/* 80C1E28C  A0 01 01 14 */	lhz r0, 0x114(r1)
/* 80C1E290  B0 03 00 3A */	sth r0, 0x3a(r3)
/* 80C1E294  38 63 00 36 */	addi r3, r3, 0x36
/* 80C1E298  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E29C  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E2A0  38 BF 00 B0 */	addi r5, r31, 0xb0
/* 80C1E2A4  4B FF FA 75 */	bl __register_global_object
/* 80C1E2A8  38 61 01 08 */	addi r3, r1, 0x108
/* 80C1E2AC  38 80 02 AE */	li r4, 0x2ae
/* 80C1E2B0  38 A0 00 00 */	li r5, 0
/* 80C1E2B4  38 C0 00 88 */	li r6, 0x88
/* 80C1E2B8  4B 64 91 3D */	bl __ct__5csXyzFsss
/* 80C1E2BC  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E2C0  80 01 01 08 */	lwz r0, 0x108(r1)
/* 80C1E2C4  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80C1E2C8  A0 01 01 0C */	lhz r0, 0x10c(r1)
/* 80C1E2CC  B0 03 00 40 */	sth r0, 0x40(r3)
/* 80C1E2D0  38 63 00 3C */	addi r3, r3, 0x3c
/* 80C1E2D4  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E2D8  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E2DC  38 BF 00 BC */	addi r5, r31, 0xbc
/* 80C1E2E0  4B FF FA 39 */	bl __register_global_object
/* 80C1E2E4  38 61 01 00 */	addi r3, r1, 0x100
/* 80C1E2E8  38 80 02 3C */	li r4, 0x23c
/* 80C1E2EC  38 A0 00 00 */	li r5, 0
/* 80C1E2F0  38 C0 FE 91 */	li r6, -367
/* 80C1E2F4  4B 64 91 01 */	bl __ct__5csXyzFsss
/* 80C1E2F8  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E2FC  80 01 01 00 */	lwz r0, 0x100(r1)
/* 80C1E300  90 03 00 42 */	stw r0, 0x42(r3)
/* 80C1E304  A0 01 01 04 */	lhz r0, 0x104(r1)
/* 80C1E308  B0 03 00 46 */	sth r0, 0x46(r3)
/* 80C1E30C  38 63 00 42 */	addi r3, r3, 0x42
/* 80C1E310  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E314  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E318  38 BF 00 C8 */	addi r5, r31, 0xc8
/* 80C1E31C  4B FF F9 FD */	bl __register_global_object
/* 80C1E320  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80C1E324  38 80 00 98 */	li r4, 0x98
/* 80C1E328  38 A0 00 00 */	li r5, 0
/* 80C1E32C  38 C0 FD 7E */	li r6, -642
/* 80C1E330  4B 64 90 C5 */	bl __ct__5csXyzFsss
/* 80C1E334  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E338  80 01 00 F8 */	lwz r0, 0xf8(r1)
/* 80C1E33C  90 03 00 48 */	stw r0, 0x48(r3)
/* 80C1E340  A0 01 00 FC */	lhz r0, 0xfc(r1)
/* 80C1E344  B0 03 00 4C */	sth r0, 0x4c(r3)
/* 80C1E348  38 63 00 48 */	addi r3, r3, 0x48
/* 80C1E34C  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E350  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E354  38 BF 00 D4 */	addi r5, r31, 0xd4
/* 80C1E358  4B FF F9 C1 */	bl __register_global_object
/* 80C1E35C  38 61 00 F0 */	addi r3, r1, 0xf0
/* 80C1E360  38 80 FE BB */	li r4, -325
/* 80C1E364  38 A0 00 00 */	li r5, 0
/* 80C1E368  38 C0 FD DA */	li r6, -550
/* 80C1E36C  4B 64 90 89 */	bl __ct__5csXyzFsss
/* 80C1E370  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E374  80 01 00 F0 */	lwz r0, 0xf0(r1)
/* 80C1E378  90 03 00 4E */	stw r0, 0x4e(r3)
/* 80C1E37C  A0 01 00 F4 */	lhz r0, 0xf4(r1)
/* 80C1E380  B0 03 00 52 */	sth r0, 0x52(r3)
/* 80C1E384  38 63 00 4E */	addi r3, r3, 0x4e
/* 80C1E388  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E38C  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E390  38 BF 00 E0 */	addi r5, r31, 0xe0
/* 80C1E394  4B FF F9 85 */	bl __register_global_object
/* 80C1E398  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80C1E39C  38 80 FD 12 */	li r4, -750
/* 80C1E3A0  38 A0 00 00 */	li r5, 0
/* 80C1E3A4  38 C0 FF 6A */	li r6, -150
/* 80C1E3A8  4B 64 90 4D */	bl __ct__5csXyzFsss
/* 80C1E3AC  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E3B0  80 01 00 E8 */	lwz r0, 0xe8(r1)
/* 80C1E3B4  90 03 00 54 */	stw r0, 0x54(r3)
/* 80C1E3B8  A0 01 00 EC */	lhz r0, 0xec(r1)
/* 80C1E3BC  B0 03 00 58 */	sth r0, 0x58(r3)
/* 80C1E3C0  38 63 00 54 */	addi r3, r3, 0x54
/* 80C1E3C4  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E3C8  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E3CC  38 BF 00 EC */	addi r5, r31, 0xec
/* 80C1E3D0  4B FF F9 49 */	bl __register_global_object
/* 80C1E3D4  38 61 00 E0 */	addi r3, r1, 0xe0
/* 80C1E3D8  38 80 FE 3E */	li r4, -450
/* 80C1E3DC  38 A0 00 00 */	li r5, 0
/* 80C1E3E0  38 C0 00 96 */	li r6, 0x96
/* 80C1E3E4  4B 64 90 11 */	bl __ct__5csXyzFsss
/* 80C1E3E8  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E3EC  80 01 00 E0 */	lwz r0, 0xe0(r1)
/* 80C1E3F0  90 03 00 5A */	stw r0, 0x5a(r3)
/* 80C1E3F4  A0 01 00 E4 */	lhz r0, 0xe4(r1)
/* 80C1E3F8  B0 03 00 5E */	sth r0, 0x5e(r3)
/* 80C1E3FC  38 63 00 5A */	addi r3, r3, 0x5a
/* 80C1E400  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E404  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E408  38 BF 00 F8 */	addi r5, r31, 0xf8
/* 80C1E40C  4B FF F9 0D */	bl __register_global_object
/* 80C1E410  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80C1E414  38 80 FF 6A */	li r4, -150
/* 80C1E418  38 A0 00 00 */	li r5, 0
/* 80C1E41C  38 C0 01 C2 */	li r6, 0x1c2
/* 80C1E420  4B 64 8F D5 */	bl __ct__5csXyzFsss
/* 80C1E424  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E428  80 01 00 D8 */	lwz r0, 0xd8(r1)
/* 80C1E42C  90 03 00 60 */	stw r0, 0x60(r3)
/* 80C1E430  A0 01 00 DC */	lhz r0, 0xdc(r1)
/* 80C1E434  B0 03 00 64 */	sth r0, 0x64(r3)
/* 80C1E438  38 63 00 60 */	addi r3, r3, 0x60
/* 80C1E43C  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E440  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E444  38 BF 01 04 */	addi r5, r31, 0x104
/* 80C1E448  4B FF F8 D1 */	bl __register_global_object
/* 80C1E44C  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80C1E450  38 80 00 96 */	li r4, 0x96
/* 80C1E454  38 A0 00 00 */	li r5, 0
/* 80C1E458  38 C0 02 EE */	li r6, 0x2ee
/* 80C1E45C  4B 64 8F 99 */	bl __ct__5csXyzFsss
/* 80C1E460  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E464  80 01 00 D0 */	lwz r0, 0xd0(r1)
/* 80C1E468  90 03 00 66 */	stw r0, 0x66(r3)
/* 80C1E46C  A0 01 00 D4 */	lhz r0, 0xd4(r1)
/* 80C1E470  B0 03 00 6A */	sth r0, 0x6a(r3)
/* 80C1E474  38 63 00 66 */	addi r3, r3, 0x66
/* 80C1E478  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E47C  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E480  38 BF 01 10 */	addi r5, r31, 0x110
/* 80C1E484  4B FF F8 95 */	bl __register_global_object
/* 80C1E488  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80C1E48C  38 80 01 C2 */	li r4, 0x1c2
/* 80C1E490  38 A0 00 00 */	li r5, 0
/* 80C1E494  38 C0 01 C2 */	li r6, 0x1c2
/* 80C1E498  4B 64 8F 5D */	bl __ct__5csXyzFsss
/* 80C1E49C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E4A0  80 01 00 C8 */	lwz r0, 0xc8(r1)
/* 80C1E4A4  90 03 00 6C */	stw r0, 0x6c(r3)
/* 80C1E4A8  A0 01 00 CC */	lhz r0, 0xcc(r1)
/* 80C1E4AC  B0 03 00 70 */	sth r0, 0x70(r3)
/* 80C1E4B0  38 63 00 6C */	addi r3, r3, 0x6c
/* 80C1E4B4  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E4B8  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E4BC  38 BF 01 1C */	addi r5, r31, 0x11c
/* 80C1E4C0  4B FF F8 59 */	bl __register_global_object
/* 80C1E4C4  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80C1E4C8  38 80 02 EE */	li r4, 0x2ee
/* 80C1E4CC  38 A0 00 00 */	li r5, 0
/* 80C1E4D0  38 C0 00 96 */	li r6, 0x96
/* 80C1E4D4  4B 64 8F 21 */	bl __ct__5csXyzFsss
/* 80C1E4D8  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E4DC  80 01 00 C0 */	lwz r0, 0xc0(r1)
/* 80C1E4E0  90 03 00 72 */	stw r0, 0x72(r3)
/* 80C1E4E4  A0 01 00 C4 */	lhz r0, 0xc4(r1)
/* 80C1E4E8  B0 03 00 76 */	sth r0, 0x76(r3)
/* 80C1E4EC  38 63 00 72 */	addi r3, r3, 0x72
/* 80C1E4F0  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E4F4  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E4F8  38 BF 01 28 */	addi r5, r31, 0x128
/* 80C1E4FC  4B FF F8 1D */	bl __register_global_object
/* 80C1E500  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80C1E504  38 80 01 C2 */	li r4, 0x1c2
/* 80C1E508  38 A0 00 00 */	li r5, 0
/* 80C1E50C  38 C0 FF 6A */	li r6, -150
/* 80C1E510  4B 64 8E E5 */	bl __ct__5csXyzFsss
/* 80C1E514  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E518  80 01 00 B8 */	lwz r0, 0xb8(r1)
/* 80C1E51C  90 03 00 78 */	stw r0, 0x78(r3)
/* 80C1E520  A0 01 00 BC */	lhz r0, 0xbc(r1)
/* 80C1E524  B0 03 00 7C */	sth r0, 0x7c(r3)
/* 80C1E528  38 63 00 78 */	addi r3, r3, 0x78
/* 80C1E52C  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E530  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E534  38 BF 01 34 */	addi r5, r31, 0x134
/* 80C1E538  4B FF F7 E1 */	bl __register_global_object
/* 80C1E53C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80C1E540  38 80 00 96 */	li r4, 0x96
/* 80C1E544  38 A0 00 00 */	li r5, 0
/* 80C1E548  38 C0 FE 3E */	li r6, -450
/* 80C1E54C  4B 64 8E A9 */	bl __ct__5csXyzFsss
/* 80C1E550  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E554  80 01 00 B0 */	lwz r0, 0xb0(r1)
/* 80C1E558  90 03 00 7E */	stw r0, 0x7e(r3)
/* 80C1E55C  A0 01 00 B4 */	lhz r0, 0xb4(r1)
/* 80C1E560  B0 03 00 82 */	sth r0, 0x82(r3)
/* 80C1E564  38 63 00 7E */	addi r3, r3, 0x7e
/* 80C1E568  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E56C  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E570  38 BF 01 40 */	addi r5, r31, 0x140
/* 80C1E574  4B FF F7 A5 */	bl __register_global_object
/* 80C1E578  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80C1E57C  38 80 FF 6A */	li r4, -150
/* 80C1E580  38 A0 00 00 */	li r5, 0
/* 80C1E584  38 C0 FD 12 */	li r6, -750
/* 80C1E588  4B 64 8E 6D */	bl __ct__5csXyzFsss
/* 80C1E58C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E590  80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 80C1E594  90 03 00 84 */	stw r0, 0x84(r3)
/* 80C1E598  A0 01 00 AC */	lhz r0, 0xac(r1)
/* 80C1E59C  B0 03 00 88 */	sth r0, 0x88(r3)
/* 80C1E5A0  38 63 00 84 */	addi r3, r3, 0x84
/* 80C1E5A4  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E5A8  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E5AC  38 BF 01 4C */	addi r5, r31, 0x14c
/* 80C1E5B0  4B FF F7 69 */	bl __register_global_object
/* 80C1E5B4  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80C1E5B8  38 80 FE 3E */	li r4, -450
/* 80C1E5BC  38 A0 00 00 */	li r5, 0
/* 80C1E5C0  38 C0 FE 3E */	li r6, -450
/* 80C1E5C4  4B 64 8E 31 */	bl __ct__5csXyzFsss
/* 80C1E5C8  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E5CC  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 80C1E5D0  90 03 00 8A */	stw r0, 0x8a(r3)
/* 80C1E5D4  A0 01 00 A4 */	lhz r0, 0xa4(r1)
/* 80C1E5D8  B0 03 00 8E */	sth r0, 0x8e(r3)
/* 80C1E5DC  38 63 00 8A */	addi r3, r3, 0x8a
/* 80C1E5E0  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E5E4  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E5E8  38 BF 01 58 */	addi r5, r31, 0x158
/* 80C1E5EC  4B FF F7 2D */	bl __register_global_object
/* 80C1E5F0  38 61 00 98 */	addi r3, r1, 0x98
/* 80C1E5F4  38 80 FD 12 */	li r4, -750
/* 80C1E5F8  38 A0 00 00 */	li r5, 0
/* 80C1E5FC  38 C0 FF 6A */	li r6, -150
/* 80C1E600  4B 64 8D F5 */	bl __ct__5csXyzFsss
/* 80C1E604  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E608  80 01 00 98 */	lwz r0, 0x98(r1)
/* 80C1E60C  90 03 00 90 */	stw r0, 0x90(r3)
/* 80C1E610  A0 01 00 9C */	lhz r0, 0x9c(r1)
/* 80C1E614  B0 03 00 94 */	sth r0, 0x94(r3)
/* 80C1E618  38 63 00 90 */	addi r3, r3, 0x90
/* 80C1E61C  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E620  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E624  38 BF 01 64 */	addi r5, r31, 0x164
/* 80C1E628  4B FF F6 F1 */	bl __register_global_object
/* 80C1E62C  38 61 00 90 */	addi r3, r1, 0x90
/* 80C1E630  38 80 FE 3E */	li r4, -450
/* 80C1E634  38 A0 00 00 */	li r5, 0
/* 80C1E638  38 C0 00 96 */	li r6, 0x96
/* 80C1E63C  4B 64 8D B9 */	bl __ct__5csXyzFsss
/* 80C1E640  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E644  80 01 00 90 */	lwz r0, 0x90(r1)
/* 80C1E648  90 03 00 96 */	stw r0, 0x96(r3)
/* 80C1E64C  A0 01 00 94 */	lhz r0, 0x94(r1)
/* 80C1E650  B0 03 00 9A */	sth r0, 0x9a(r3)
/* 80C1E654  38 63 00 96 */	addi r3, r3, 0x96
/* 80C1E658  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E65C  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E660  38 BF 01 70 */	addi r5, r31, 0x170
/* 80C1E664  4B FF F6 B5 */	bl __register_global_object
/* 80C1E668  38 61 00 88 */	addi r3, r1, 0x88
/* 80C1E66C  38 80 FF 6A */	li r4, -150
/* 80C1E670  38 A0 00 00 */	li r5, 0
/* 80C1E674  38 C0 01 C2 */	li r6, 0x1c2
/* 80C1E678  4B 64 8D 7D */	bl __ct__5csXyzFsss
/* 80C1E67C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E680  80 01 00 88 */	lwz r0, 0x88(r1)
/* 80C1E684  90 03 00 9C */	stw r0, 0x9c(r3)
/* 80C1E688  A0 01 00 8C */	lhz r0, 0x8c(r1)
/* 80C1E68C  B0 03 00 A0 */	sth r0, 0xa0(r3)
/* 80C1E690  38 63 00 9C */	addi r3, r3, 0x9c
/* 80C1E694  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E698  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E69C  38 BF 01 7C */	addi r5, r31, 0x17c
/* 80C1E6A0  4B FF F6 79 */	bl __register_global_object
/* 80C1E6A4  38 61 00 80 */	addi r3, r1, 0x80
/* 80C1E6A8  38 80 00 96 */	li r4, 0x96
/* 80C1E6AC  38 A0 00 00 */	li r5, 0
/* 80C1E6B0  38 C0 02 EE */	li r6, 0x2ee
/* 80C1E6B4  4B 64 8D 41 */	bl __ct__5csXyzFsss
/* 80C1E6B8  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E6BC  80 01 00 80 */	lwz r0, 0x80(r1)
/* 80C1E6C0  90 03 00 A2 */	stw r0, 0xa2(r3)
/* 80C1E6C4  A0 01 00 84 */	lhz r0, 0x84(r1)
/* 80C1E6C8  B0 03 00 A6 */	sth r0, 0xa6(r3)
/* 80C1E6CC  38 63 00 A2 */	addi r3, r3, 0xa2
/* 80C1E6D0  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E6D4  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E6D8  38 BF 01 88 */	addi r5, r31, 0x188
/* 80C1E6DC  4B FF F6 3D */	bl __register_global_object
/* 80C1E6E0  38 61 00 78 */	addi r3, r1, 0x78
/* 80C1E6E4  38 80 01 C2 */	li r4, 0x1c2
/* 80C1E6E8  38 A0 00 00 */	li r5, 0
/* 80C1E6EC  38 C0 01 C2 */	li r6, 0x1c2
/* 80C1E6F0  4B 64 8D 05 */	bl __ct__5csXyzFsss
/* 80C1E6F4  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E6F8  80 01 00 78 */	lwz r0, 0x78(r1)
/* 80C1E6FC  90 03 00 A8 */	stw r0, 0xa8(r3)
/* 80C1E700  A0 01 00 7C */	lhz r0, 0x7c(r1)
/* 80C1E704  B0 03 00 AC */	sth r0, 0xac(r3)
/* 80C1E708  38 63 00 A8 */	addi r3, r3, 0xa8
/* 80C1E70C  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E710  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E714  38 BF 01 94 */	addi r5, r31, 0x194
/* 80C1E718  4B FF F6 01 */	bl __register_global_object
/* 80C1E71C  38 61 00 70 */	addi r3, r1, 0x70
/* 80C1E720  38 80 02 EE */	li r4, 0x2ee
/* 80C1E724  38 A0 00 00 */	li r5, 0
/* 80C1E728  38 C0 00 96 */	li r6, 0x96
/* 80C1E72C  4B 64 8C C9 */	bl __ct__5csXyzFsss
/* 80C1E730  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E734  80 01 00 70 */	lwz r0, 0x70(r1)
/* 80C1E738  90 03 00 AE */	stw r0, 0xae(r3)
/* 80C1E73C  A0 01 00 74 */	lhz r0, 0x74(r1)
/* 80C1E740  B0 03 00 B2 */	sth r0, 0xb2(r3)
/* 80C1E744  38 63 00 AE */	addi r3, r3, 0xae
/* 80C1E748  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E74C  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E750  38 BF 01 A0 */	addi r5, r31, 0x1a0
/* 80C1E754  4B FF F5 C5 */	bl __register_global_object
/* 80C1E758  38 61 00 68 */	addi r3, r1, 0x68
/* 80C1E75C  38 80 01 C2 */	li r4, 0x1c2
/* 80C1E760  38 A0 00 00 */	li r5, 0
/* 80C1E764  38 C0 FF 6A */	li r6, -150
/* 80C1E768  4B 64 8C 8D */	bl __ct__5csXyzFsss
/* 80C1E76C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E770  80 01 00 68 */	lwz r0, 0x68(r1)
/* 80C1E774  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80C1E778  A0 01 00 6C */	lhz r0, 0x6c(r1)
/* 80C1E77C  B0 03 00 B8 */	sth r0, 0xb8(r3)
/* 80C1E780  38 63 00 B4 */	addi r3, r3, 0xb4
/* 80C1E784  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E788  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E78C  38 BF 01 AC */	addi r5, r31, 0x1ac
/* 80C1E790  4B FF F5 89 */	bl __register_global_object
/* 80C1E794  38 61 00 60 */	addi r3, r1, 0x60
/* 80C1E798  38 80 00 96 */	li r4, 0x96
/* 80C1E79C  38 A0 00 00 */	li r5, 0
/* 80C1E7A0  38 C0 FE 3E */	li r6, -450
/* 80C1E7A4  4B 64 8C 51 */	bl __ct__5csXyzFsss
/* 80C1E7A8  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E7AC  80 01 00 60 */	lwz r0, 0x60(r1)
/* 80C1E7B0  90 03 00 BA */	stw r0, 0xba(r3)
/* 80C1E7B4  A0 01 00 64 */	lhz r0, 0x64(r1)
/* 80C1E7B8  B0 03 00 BE */	sth r0, 0xbe(r3)
/* 80C1E7BC  38 63 00 BA */	addi r3, r3, 0xba
/* 80C1E7C0  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E7C4  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E7C8  38 BF 01 B8 */	addi r5, r31, 0x1b8
/* 80C1E7CC  4B FF F5 4D */	bl __register_global_object
/* 80C1E7D0  38 61 00 58 */	addi r3, r1, 0x58
/* 80C1E7D4  38 80 FF 6A */	li r4, -150
/* 80C1E7D8  38 A0 00 00 */	li r5, 0
/* 80C1E7DC  38 C0 FD 12 */	li r6, -750
/* 80C1E7E0  4B 64 8C 15 */	bl __ct__5csXyzFsss
/* 80C1E7E4  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E7E8  80 01 00 58 */	lwz r0, 0x58(r1)
/* 80C1E7EC  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 80C1E7F0  A0 01 00 5C */	lhz r0, 0x5c(r1)
/* 80C1E7F4  B0 03 00 C4 */	sth r0, 0xc4(r3)
/* 80C1E7F8  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80C1E7FC  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E800  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E804  38 BF 01 C4 */	addi r5, r31, 0x1c4
/* 80C1E808  4B FF F5 11 */	bl __register_global_object
/* 80C1E80C  38 61 00 50 */	addi r3, r1, 0x50
/* 80C1E810  38 80 FE 3E */	li r4, -450
/* 80C1E814  38 A0 00 00 */	li r5, 0
/* 80C1E818  38 C0 FE 3E */	li r6, -450
/* 80C1E81C  4B 64 8B D9 */	bl __ct__5csXyzFsss
/* 80C1E820  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E824  80 01 00 50 */	lwz r0, 0x50(r1)
/* 80C1E828  90 03 00 C6 */	stw r0, 0xc6(r3)
/* 80C1E82C  A0 01 00 54 */	lhz r0, 0x54(r1)
/* 80C1E830  B0 03 00 CA */	sth r0, 0xca(r3)
/* 80C1E834  38 63 00 C6 */	addi r3, r3, 0xc6
/* 80C1E838  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E83C  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E840  38 BF 01 D0 */	addi r5, r31, 0x1d0
/* 80C1E844  4B FF F4 D5 */	bl __register_global_object
/* 80C1E848  38 61 00 48 */	addi r3, r1, 0x48
/* 80C1E84C  38 80 FD 44 */	li r4, -700
/* 80C1E850  38 A0 00 00 */	li r5, 0
/* 80C1E854  38 C0 FF 6A */	li r6, -150
/* 80C1E858  4B 64 8B 9D */	bl __ct__5csXyzFsss
/* 80C1E85C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E860  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80C1E864  90 03 00 CC */	stw r0, 0xcc(r3)
/* 80C1E868  A0 01 00 4C */	lhz r0, 0x4c(r1)
/* 80C1E86C  B0 03 00 D0 */	sth r0, 0xd0(r3)
/* 80C1E870  38 63 00 CC */	addi r3, r3, 0xcc
/* 80C1E874  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E878  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E87C  38 BF 01 DC */	addi r5, r31, 0x1dc
/* 80C1E880  4B FF F4 99 */	bl __register_global_object
/* 80C1E884  38 61 00 40 */	addi r3, r1, 0x40
/* 80C1E888  38 80 FF 38 */	li r4, -200
/* 80C1E88C  38 A0 00 00 */	li r5, 0
/* 80C1E890  38 C0 01 5E */	li r6, 0x15e
/* 80C1E894  4B 64 8B 61 */	bl __ct__5csXyzFsss
/* 80C1E898  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E89C  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80C1E8A0  90 03 00 D2 */	stw r0, 0xd2(r3)
/* 80C1E8A4  A0 01 00 44 */	lhz r0, 0x44(r1)
/* 80C1E8A8  B0 03 00 D6 */	sth r0, 0xd6(r3)
/* 80C1E8AC  38 63 00 D2 */	addi r3, r3, 0xd2
/* 80C1E8B0  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E8B4  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E8B8  38 BF 01 E8 */	addi r5, r31, 0x1e8
/* 80C1E8BC  4B FF F4 5D */	bl __register_global_object
/* 80C1E8C0  38 61 00 38 */	addi r3, r1, 0x38
/* 80C1E8C4  38 80 01 2C */	li r4, 0x12c
/* 80C1E8C8  38 A0 00 00 */	li r5, 0
/* 80C1E8CC  38 C0 02 BC */	li r6, 0x2bc
/* 80C1E8D0  4B 64 8B 25 */	bl __ct__5csXyzFsss
/* 80C1E8D4  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E8D8  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80C1E8DC  90 03 00 D8 */	stw r0, 0xd8(r3)
/* 80C1E8E0  A0 01 00 3C */	lhz r0, 0x3c(r1)
/* 80C1E8E4  B0 03 00 DC */	sth r0, 0xdc(r3)
/* 80C1E8E8  38 63 00 D8 */	addi r3, r3, 0xd8
/* 80C1E8EC  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E8F0  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E8F4  38 BF 01 F4 */	addi r5, r31, 0x1f4
/* 80C1E8F8  4B FF F4 21 */	bl __register_global_object
/* 80C1E8FC  38 61 00 30 */	addi r3, r1, 0x30
/* 80C1E900  38 80 02 BC */	li r4, 0x2bc
/* 80C1E904  38 A0 00 00 */	li r5, 0
/* 80C1E908  38 C0 00 C8 */	li r6, 0xc8
/* 80C1E90C  4B 64 8A E9 */	bl __ct__5csXyzFsss
/* 80C1E910  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E914  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80C1E918  90 03 00 DE */	stw r0, 0xde(r3)
/* 80C1E91C  A0 01 00 34 */	lhz r0, 0x34(r1)
/* 80C1E920  B0 03 00 E2 */	sth r0, 0xe2(r3)
/* 80C1E924  38 63 00 DE */	addi r3, r3, 0xde
/* 80C1E928  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E92C  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E930  38 BF 02 00 */	addi r5, r31, 0x200
/* 80C1E934  4B FF F3 E5 */	bl __register_global_object
/* 80C1E938  38 61 00 28 */	addi r3, r1, 0x28
/* 80C1E93C  38 80 00 C8 */	li r4, 0xc8
/* 80C1E940  38 A0 00 00 */	li r5, 0
/* 80C1E944  38 C0 FE D4 */	li r6, -300
/* 80C1E948  4B 64 8A AD */	bl __ct__5csXyzFsss
/* 80C1E94C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E950  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80C1E954  90 03 00 E4 */	stw r0, 0xe4(r3)
/* 80C1E958  A0 01 00 2C */	lhz r0, 0x2c(r1)
/* 80C1E95C  B0 03 00 E8 */	sth r0, 0xe8(r3)
/* 80C1E960  38 63 00 E4 */	addi r3, r3, 0xe4
/* 80C1E964  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E968  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E96C  38 BF 02 0C */	addi r5, r31, 0x20c
/* 80C1E970  4B FF F3 A9 */	bl __register_global_object
/* 80C1E974  38 61 00 20 */	addi r3, r1, 0x20
/* 80C1E978  38 80 FE D4 */	li r4, -300
/* 80C1E97C  38 A0 00 00 */	li r5, 0
/* 80C1E980  38 C0 FD 44 */	li r6, -700
/* 80C1E984  4B 64 8A 71 */	bl __ct__5csXyzFsss
/* 80C1E988  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E98C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80C1E990  90 03 00 EA */	stw r0, 0xea(r3)
/* 80C1E994  A0 01 00 24 */	lhz r0, 0x24(r1)
/* 80C1E998  B0 03 00 EE */	sth r0, 0xee(r3)
/* 80C1E99C  38 63 00 EA */	addi r3, r3, 0xea
/* 80C1E9A0  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E9A4  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E9A8  38 BF 02 18 */	addi r5, r31, 0x218
/* 80C1E9AC  4B FF F3 6D */	bl __register_global_object
/* 80C1E9B0  38 61 00 18 */	addi r3, r1, 0x18
/* 80C1E9B4  38 80 FD 44 */	li r4, -700
/* 80C1E9B8  38 A0 00 00 */	li r5, 0
/* 80C1E9BC  38 C0 FF 38 */	li r6, -200
/* 80C1E9C0  4B 64 8A 35 */	bl __ct__5csXyzFsss
/* 80C1E9C4  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1E9C8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80C1E9CC  90 03 00 F0 */	stw r0, 0xf0(r3)
/* 80C1E9D0  A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 80C1E9D4  B0 03 00 F4 */	sth r0, 0xf4(r3)
/* 80C1E9D8  38 63 00 F0 */	addi r3, r3, 0xf0
/* 80C1E9DC  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1E9E0  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1E9E4  38 BF 02 24 */	addi r5, r31, 0x224
/* 80C1E9E8  4B FF F3 31 */	bl __register_global_object
/* 80C1E9EC  38 61 00 10 */	addi r3, r1, 0x10
/* 80C1E9F0  38 80 FF 38 */	li r4, -200
/* 80C1E9F4  38 A0 00 00 */	li r5, 0
/* 80C1E9F8  38 C0 01 2C */	li r6, 0x12c
/* 80C1E9FC  4B 64 89 F9 */	bl __ct__5csXyzFsss
/* 80C1EA00  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1EA04  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80C1EA08  90 03 00 F6 */	stw r0, 0xf6(r3)
/* 80C1EA0C  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80C1EA10  B0 03 00 FA */	sth r0, 0xfa(r3)
/* 80C1EA14  38 63 00 F6 */	addi r3, r3, 0xf6
/* 80C1EA18  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1EA1C  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1EA20  38 BF 02 30 */	addi r5, r31, 0x230
/* 80C1EA24  4B FF F2 F5 */	bl __register_global_object
/* 80C1EA28  38 61 00 08 */	addi r3, r1, 8
/* 80C1EA2C  38 80 01 2C */	li r4, 0x12c
/* 80C1EA30  38 A0 00 00 */	li r5, 0
/* 80C1EA34  38 C0 02 BC */	li r6, 0x2bc
/* 80C1EA38  4B 64 89 BD */	bl __ct__5csXyzFsss
/* 80C1EA3C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1EA40  80 01 00 08 */	lwz r0, 8(r1)
/* 80C1EA44  90 03 00 FC */	stw r0, 0xfc(r3)
/* 80C1EA48  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 80C1EA4C  B0 03 01 00 */	sth r0, 0x100(r3)
/* 80C1EA50  38 63 00 FC */	addi r3, r3, 0xfc
/* 80C1EA54  3C 80 80 C2 */	lis r4, __dt__5csXyzFv@ha /* 0x80C1EAFC@ha */
/* 80C1EA58  38 84 EA FC */	addi r4, r4, __dt__5csXyzFv@l /* 0x80C1EAFC@l */
/* 80C1EA5C  38 BF 02 3C */	addi r5, r31, 0x23c
/* 80C1EA60  4B FF F2 B9 */	bl __register_global_object
/* 80C1EA64  38 00 00 01 */	li r0, 1
/* 80C1EA68  98 1F 00 4C */	stb r0, 0x4c(r31)
lbl_80C1EA6C:
/* 80C1EA6C  88 1E 05 C8 */	lbz r0, 0x5c8(r30)
/* 80C1EA70  28 00 00 00 */	cmplwi r0, 0
/* 80C1EA74  41 82 00 50 */	beq lbl_80C1EAC4
/* 80C1EA78  A0 1E 05 CA */	lhz r0, 0x5ca(r30)
/* 80C1EA7C  28 00 00 2B */	cmplwi r0, 0x2b
/* 80C1EA80  40 80 00 2C */	bge lbl_80C1EAAC
/* 80C1EA84  1C 00 00 06 */	mulli r0, r0, 6
/* 80C1EA88  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C1EA8C  7C 03 02 AE */	lhax r0, r3, r0
/* 80C1EA90  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 80C1EA94  A0 1E 05 CA */	lhz r0, 0x5ca(r30)
/* 80C1EA98  1C 00 00 06 */	mulli r0, r0, 6
/* 80C1EA9C  7C 63 02 14 */	add r3, r3, r0
/* 80C1EAA0  A8 03 00 04 */	lha r0, 4(r3)
/* 80C1EAA4  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 80C1EAA8  48 00 00 10 */	b lbl_80C1EAB8
lbl_80C1EAAC:
/* 80C1EAAC  38 00 00 00 */	li r0, 0
/* 80C1EAB0  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 80C1EAB4  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
lbl_80C1EAB8:
/* 80C1EAB8  A0 7E 05 CA */	lhz r3, 0x5ca(r30)
/* 80C1EABC  38 03 00 01 */	addi r0, r3, 1
/* 80C1EAC0  B0 1E 05 CA */	sth r0, 0x5ca(r30)
lbl_80C1EAC4:
/* 80C1EAC4  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C1EAC8  90 1D 00 00 */	stw r0, 0(r29)
/* 80C1EACC  7F C3 F3 78 */	mr r3, r30
/* 80C1EAD0  4B FF F2 F9 */	bl setBaseMtx__11daObjFuta_cFv
/* 80C1EAD4  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80C1EAD8  38 03 00 01 */	addi r0, r3, 1
/* 80C1EADC  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 80C1EAE0  38 60 00 01 */	li r3, 1
/* 80C1EAE4  39 61 01 70 */	addi r11, r1, 0x170
/* 80C1EAE8  4B 74 37 41 */	bl _restgpr_29
/* 80C1EAEC  80 01 01 74 */	lwz r0, 0x174(r1)
/* 80C1EAF0  7C 08 03 A6 */	mtlr r0
/* 80C1EAF4  38 21 01 70 */	addi r1, r1, 0x170
/* 80C1EAF8  4E 80 00 20 */	blr 
