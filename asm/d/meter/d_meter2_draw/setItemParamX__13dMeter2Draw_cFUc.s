lbl_8021B104:
/* 8021B104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021B108  7C 08 02 A6 */	mflr r0
/* 8021B10C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021B110  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021B114  7C 7F 1B 78 */	mr r31, r3
/* 8021B118  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8021B11C  38 A3 EB C8 */	addi r5, r3, g_drawHIO@l
/* 8021B120  88 05 04 26 */	lbz r0, 0x426(r5)
/* 8021B124  28 00 00 00 */	cmplwi r0, 0
/* 8021B128  41 82 00 40 */	beq lbl_8021B168
/* 8021B12C  C0 05 01 B4 */	lfs f0, 0x1b4(r5)
/* 8021B130  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8021B134  C0 05 01 B8 */	lfs f0, 0x1b8(r5)
/* 8021B138  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8021B13C  C0 05 01 BC */	lfs f0, 0x1bc(r5)
/* 8021B140  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8021B144  C0 05 01 E4 */	lfs f0, 0x1e4(r5)
/* 8021B148  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8021B14C  C0 05 01 F0 */	lfs f0, 0x1f0(r5)
/* 8021B150  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8021B154  C0 05 02 00 */	lfs f0, 0x200(r5)
/* 8021B158  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8021B15C  C0 05 02 10 */	lfs f0, 0x210(r5)
/* 8021B160  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8021B164  48 00 01 EC */	b lbl_8021B350
lbl_8021B168:
/* 8021B168  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8021B16C  38 03 FF C0 */	addi r0, r3, -64
/* 8021B170  28 00 00 08 */	cmplwi r0, 8
/* 8021B174  41 81 01 48 */	bgt lbl_8021B2BC
/* 8021B178  3C 60 80 3C */	lis r3, lit_9008@ha
/* 8021B17C  38 63 F5 54 */	addi r3, r3, lit_9008@l
/* 8021B180  54 00 10 3A */	slwi r0, r0, 2
/* 8021B184  7C 03 00 2E */	lwzx r0, r3, r0
/* 8021B188  7C 09 03 A6 */	mtctr r0
/* 8021B18C  4E 80 04 20 */	bctr 
/* 8021B190  C0 02 AE E8 */	lfs f0, lit_8992(r2)
/* 8021B194  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8021B198  C0 02 AE EC */	lfs f0, lit_8993(r2)
/* 8021B19C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8021B1A0  C0 02 AE F0 */	lfs f0, lit_8994(r2)
/* 8021B1A4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8021B1A8  C0 02 AE 88 */	lfs f0, lit_4184(r2)
/* 8021B1AC  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8021B1B0  C0 02 AE F4 */	lfs f0, lit_8995(r2)
/* 8021B1B4  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8021B1B8  C0 02 AE F8 */	lfs f0, lit_8996(r2)
/* 8021B1BC  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8021B1C0  C0 02 AE FC */	lfs f0, lit_8997(r2)
/* 8021B1C4  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8021B1C8  48 00 01 88 */	b lbl_8021B350
/* 8021B1CC  C0 02 AF 00 */	lfs f0, lit_8998(r2)
/* 8021B1D0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8021B1D4  C0 02 AF 04 */	lfs f0, lit_8999(r2)
/* 8021B1D8  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8021B1DC  C0 02 AF 08 */	lfs f0, lit_9000(r2)
/* 8021B1E0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8021B1E4  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021B1E8  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8021B1EC  C0 02 AE F4 */	lfs f0, lit_8995(r2)
/* 8021B1F0  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8021B1F4  C0 02 AE F8 */	lfs f0, lit_8996(r2)
/* 8021B1F8  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8021B1FC  C0 02 AE FC */	lfs f0, lit_8997(r2)
/* 8021B200  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8021B204  48 00 01 4C */	b lbl_8021B350
/* 8021B208  C0 02 AE E8 */	lfs f0, lit_8992(r2)
/* 8021B20C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8021B210  C0 02 AF 04 */	lfs f0, lit_8999(r2)
/* 8021B214  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8021B218  C0 02 AE F0 */	lfs f0, lit_8994(r2)
/* 8021B21C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8021B220  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021B224  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8021B228  C0 02 AE F4 */	lfs f0, lit_8995(r2)
/* 8021B22C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8021B230  C0 02 AE F8 */	lfs f0, lit_8996(r2)
/* 8021B234  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8021B238  C0 02 AE FC */	lfs f0, lit_8997(r2)
/* 8021B23C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8021B240  48 00 01 10 */	b lbl_8021B350
/* 8021B244  C0 02 AE 88 */	lfs f0, lit_4184(r2)
/* 8021B248  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8021B24C  C0 02 AF 04 */	lfs f0, lit_8999(r2)
/* 8021B250  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8021B254  C0 02 AF 0C */	lfs f0, lit_9001(r2)
/* 8021B258  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8021B25C  C0 02 AF 10 */	lfs f0, lit_9002(r2)
/* 8021B260  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8021B264  C0 02 AE F4 */	lfs f0, lit_8995(r2)
/* 8021B268  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8021B26C  C0 02 AE F8 */	lfs f0, lit_8996(r2)
/* 8021B270  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8021B274  C0 02 AE FC */	lfs f0, lit_8997(r2)
/* 8021B278  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8021B27C  48 00 00 D4 */	b lbl_8021B350
/* 8021B280  C0 02 AF 14 */	lfs f0, lit_9003(r2)
/* 8021B284  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8021B288  C0 02 AF 18 */	lfs f0, lit_9004(r2)
/* 8021B28C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8021B290  C0 05 01 BC */	lfs f0, 0x1bc(r5)
/* 8021B294  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8021B298  C0 05 01 E4 */	lfs f0, 0x1e4(r5)
/* 8021B29C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8021B2A0  C0 05 01 F0 */	lfs f0, 0x1f0(r5)
/* 8021B2A4  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8021B2A8  C0 05 02 00 */	lfs f0, 0x200(r5)
/* 8021B2AC  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8021B2B0  C0 05 02 10 */	lfs f0, 0x210(r5)
/* 8021B2B4  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8021B2B8  48 00 00 98 */	b lbl_8021B350
lbl_8021B2BC:
/* 8021B2BC  7C 83 23 78 */	mr r3, r4
/* 8021B2C0  4B E8 04 49 */	bl isBottleItem__FUc
/* 8021B2C4  2C 03 00 00 */	cmpwi r3, 0
/* 8021B2C8  41 82 00 48 */	beq lbl_8021B310
/* 8021B2CC  C0 02 AF 1C */	lfs f0, lit_9005(r2)
/* 8021B2D0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8021B2D4  C0 02 AF 20 */	lfs f0, lit_9006(r2)
/* 8021B2D8  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8021B2DC  C0 02 AF 24 */	lfs f0, lit_9007(r2)
/* 8021B2E0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8021B2E4  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8021B2E8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8021B2EC  C0 03 01 E4 */	lfs f0, 0x1e4(r3)
/* 8021B2F0  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8021B2F4  C0 03 01 F0 */	lfs f0, 0x1f0(r3)
/* 8021B2F8  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8021B2FC  C0 03 02 00 */	lfs f0, 0x200(r3)
/* 8021B300  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8021B304  C0 03 02 10 */	lfs f0, 0x210(r3)
/* 8021B308  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8021B30C  48 00 00 44 */	b lbl_8021B350
lbl_8021B310:
/* 8021B310  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8021B314  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8021B318  C0 03 01 B4 */	lfs f0, 0x1b4(r3)
/* 8021B31C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8021B320  C0 03 01 B8 */	lfs f0, 0x1b8(r3)
/* 8021B324  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8021B328  C0 03 01 BC */	lfs f0, 0x1bc(r3)
/* 8021B32C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8021B330  C0 03 01 E4 */	lfs f0, 0x1e4(r3)
/* 8021B334  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8021B338  C0 03 01 F0 */	lfs f0, 0x1f0(r3)
/* 8021B33C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8021B340  C0 03 02 00 */	lfs f0, 0x200(r3)
/* 8021B344  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8021B348  C0 03 02 10 */	lfs f0, 0x210(r3)
/* 8021B34C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
lbl_8021B350:
/* 8021B350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021B354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021B358  7C 08 03 A6 */	mtlr r0
/* 8021B35C  38 21 00 10 */	addi r1, r1, 0x10
/* 8021B360  4E 80 00 20 */	blr 
