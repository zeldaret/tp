lbl_809814DC:
/* 809814DC  94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 809814E0  7C 08 02 A6 */	mflr r0
/* 809814E4  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 809814E8  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 809814EC  4B 9E 0C F1 */	bl _savegpr_29
/* 809814F0  7C 7E 1B 78 */	mr r30, r3
/* 809814F4  7C 9D 23 78 */	mr r29, r4
/* 809814F8  3C 60 80 99 */	lis r3, lit_1109@ha /* 0x8098BA80@ha */
/* 809814FC  3B E3 BA 80 */	addi r31, r3, lit_1109@l /* 0x8098BA80@l */
/* 80981500  88 1F 00 5C */	lbz r0, 0x5c(r31)
/* 80981504  7C 00 07 75 */	extsb. r0, r0
/* 80981508  40 82 07 88 */	bne lbl_80981C90
/* 8098150C  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 80981510  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981514  D0 21 01 70 */	stfs f1, 0x170(r1)
/* 80981518  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 8098151C  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 80981520  D0 01 01 74 */	stfs f0, 0x174(r1)
/* 80981524  D0 21 01 78 */	stfs f1, 0x178(r1)
/* 80981528  D0 3F 01 BC */	stfs f1, 0x1bc(r31)
/* 8098152C  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981530  D0 03 00 04 */	stfs f0, 4(r3)
/* 80981534  D0 23 00 08 */	stfs f1, 8(r3)
/* 80981538  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 8098153C  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981540  38 BF 00 50 */	addi r5, r31, 0x50
/* 80981544  4B FF F2 95 */	bl __register_global_object
/* 80981548  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 8098154C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981550  D0 21 01 64 */	stfs f1, 0x164(r1)
/* 80981554  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981558  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 8098155C  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 80981560  D0 21 01 6C */	stfs f1, 0x16c(r1)
/* 80981564  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981568  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8098156C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80981570  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 80981574  38 63 00 0C */	addi r3, r3, 0xc
/* 80981578  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 8098157C  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981580  38 BF 00 60 */	addi r5, r31, 0x60
/* 80981584  4B FF F2 55 */	bl __register_global_object
/* 80981588  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 8098158C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981590  D0 21 01 58 */	stfs f1, 0x158(r1)
/* 80981594  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981598  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 8098159C  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 809815A0  D0 21 01 60 */	stfs f1, 0x160(r1)
/* 809815A4  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 809815A8  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 809815AC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 809815B0  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 809815B4  38 63 00 18 */	addi r3, r3, 0x18
/* 809815B8  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 809815BC  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 809815C0  38 BF 00 6C */	addi r5, r31, 0x6c
/* 809815C4  4B FF F2 15 */	bl __register_global_object
/* 809815C8  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 809815CC  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 809815D0  D0 21 01 4C */	stfs f1, 0x14c(r1)
/* 809815D4  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 809815D8  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 809815DC  D0 01 01 50 */	stfs f0, 0x150(r1)
/* 809815E0  D0 21 01 54 */	stfs f1, 0x154(r1)
/* 809815E4  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 809815E8  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 809815EC  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 809815F0  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 809815F4  38 63 00 24 */	addi r3, r3, 0x24
/* 809815F8  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 809815FC  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981600  38 BF 00 78 */	addi r5, r31, 0x78
/* 80981604  4B FF F1 D5 */	bl __register_global_object
/* 80981608  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 8098160C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981610  D0 21 01 40 */	stfs f1, 0x140(r1)
/* 80981614  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981618  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 8098161C  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 80981620  D0 21 01 48 */	stfs f1, 0x148(r1)
/* 80981624  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981628  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 8098162C  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80981630  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 80981634  38 63 00 30 */	addi r3, r3, 0x30
/* 80981638  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 8098163C  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981640  38 BF 00 84 */	addi r5, r31, 0x84
/* 80981644  4B FF F1 95 */	bl __register_global_object
/* 80981648  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 8098164C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981650  D0 21 01 34 */	stfs f1, 0x134(r1)
/* 80981654  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981658  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 8098165C  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 80981660  D0 21 01 3C */	stfs f1, 0x13c(r1)
/* 80981664  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981668  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 8098166C  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 80981670  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 80981674  38 63 00 3C */	addi r3, r3, 0x3c
/* 80981678  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 8098167C  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981680  38 BF 00 90 */	addi r5, r31, 0x90
/* 80981684  4B FF F1 55 */	bl __register_global_object
/* 80981688  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 8098168C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981690  D0 21 01 28 */	stfs f1, 0x128(r1)
/* 80981694  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981698  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 8098169C  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 809816A0  D0 21 01 30 */	stfs f1, 0x130(r1)
/* 809816A4  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 809816A8  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 809816AC  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 809816B0  D0 23 00 50 */	stfs f1, 0x50(r3)
/* 809816B4  38 63 00 48 */	addi r3, r3, 0x48
/* 809816B8  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 809816BC  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 809816C0  38 BF 00 9C */	addi r5, r31, 0x9c
/* 809816C4  4B FF F1 15 */	bl __register_global_object
/* 809816C8  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 809816CC  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 809816D0  D0 21 01 1C */	stfs f1, 0x11c(r1)
/* 809816D4  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 809816D8  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 809816DC  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 809816E0  D0 21 01 24 */	stfs f1, 0x124(r1)
/* 809816E4  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 809816E8  D0 23 00 54 */	stfs f1, 0x54(r3)
/* 809816EC  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 809816F0  D0 23 00 5C */	stfs f1, 0x5c(r3)
/* 809816F4  38 63 00 54 */	addi r3, r3, 0x54
/* 809816F8  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 809816FC  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981700  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 80981704  4B FF F0 D5 */	bl __register_global_object
/* 80981708  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 8098170C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981710  D0 21 01 10 */	stfs f1, 0x110(r1)
/* 80981714  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981718  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 8098171C  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80981720  D0 21 01 18 */	stfs f1, 0x118(r1)
/* 80981724  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981728  D0 23 00 60 */	stfs f1, 0x60(r3)
/* 8098172C  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 80981730  D0 23 00 68 */	stfs f1, 0x68(r3)
/* 80981734  38 63 00 60 */	addi r3, r3, 0x60
/* 80981738  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 8098173C  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981740  38 BF 00 B4 */	addi r5, r31, 0xb4
/* 80981744  4B FF F0 95 */	bl __register_global_object
/* 80981748  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 8098174C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981750  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 80981754  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981758  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 8098175C  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80981760  D0 21 01 0C */	stfs f1, 0x10c(r1)
/* 80981764  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981768  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 8098176C  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 80981770  D0 23 00 74 */	stfs f1, 0x74(r3)
/* 80981774  38 63 00 6C */	addi r3, r3, 0x6c
/* 80981778  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 8098177C  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981780  38 BF 00 C0 */	addi r5, r31, 0xc0
/* 80981784  4B FF F0 55 */	bl __register_global_object
/* 80981788  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 8098178C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981790  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 80981794  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981798  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 8098179C  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 809817A0  D0 21 01 00 */	stfs f1, 0x100(r1)
/* 809817A4  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 809817A8  D0 23 00 78 */	stfs f1, 0x78(r3)
/* 809817AC  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 809817B0  D0 23 00 80 */	stfs f1, 0x80(r3)
/* 809817B4  38 63 00 78 */	addi r3, r3, 0x78
/* 809817B8  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 809817BC  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 809817C0  38 BF 00 CC */	addi r5, r31, 0xcc
/* 809817C4  4B FF F0 15 */	bl __register_global_object
/* 809817C8  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 809817CC  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 809817D0  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 809817D4  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 809817D8  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 809817DC  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 809817E0  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 809817E4  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 809817E8  D0 23 00 84 */	stfs f1, 0x84(r3)
/* 809817EC  D0 03 00 88 */	stfs f0, 0x88(r3)
/* 809817F0  D0 23 00 8C */	stfs f1, 0x8c(r3)
/* 809817F4  38 63 00 84 */	addi r3, r3, 0x84
/* 809817F8  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 809817FC  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981800  38 BF 00 D8 */	addi r5, r31, 0xd8
/* 80981804  4B FF EF D5 */	bl __register_global_object
/* 80981808  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 8098180C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981810  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 80981814  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981818  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 8098181C  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80981820  D0 21 00 E8 */	stfs f1, 0xe8(r1)
/* 80981824  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981828  D0 23 00 90 */	stfs f1, 0x90(r3)
/* 8098182C  D0 03 00 94 */	stfs f0, 0x94(r3)
/* 80981830  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 80981834  38 63 00 90 */	addi r3, r3, 0x90
/* 80981838  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 8098183C  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981840  38 BF 00 E4 */	addi r5, r31, 0xe4
/* 80981844  4B FF EF 95 */	bl __register_global_object
/* 80981848  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 8098184C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981850  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 80981854  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981858  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 8098185C  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80981860  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 80981864  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981868  D0 23 00 9C */	stfs f1, 0x9c(r3)
/* 8098186C  D0 03 00 A0 */	stfs f0, 0xa0(r3)
/* 80981870  D0 23 00 A4 */	stfs f1, 0xa4(r3)
/* 80981874  38 63 00 9C */	addi r3, r3, 0x9c
/* 80981878  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 8098187C  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981880  38 BF 00 F0 */	addi r5, r31, 0xf0
/* 80981884  4B FF EF 55 */	bl __register_global_object
/* 80981888  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 8098188C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981890  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 80981894  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981898  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 8098189C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 809818A0  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 809818A4  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 809818A8  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 809818AC  D0 03 00 AC */	stfs f0, 0xac(r3)
/* 809818B0  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 809818B4  38 63 00 A8 */	addi r3, r3, 0xa8
/* 809818B8  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 809818BC  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 809818C0  38 BF 00 FC */	addi r5, r31, 0xfc
/* 809818C4  4B FF EF 15 */	bl __register_global_object
/* 809818C8  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 809818CC  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 809818D0  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 809818D4  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 809818D8  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 809818DC  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 809818E0  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 809818E4  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 809818E8  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 809818EC  D0 03 00 B8 */	stfs f0, 0xb8(r3)
/* 809818F0  D0 23 00 BC */	stfs f1, 0xbc(r3)
/* 809818F4  38 63 00 B4 */	addi r3, r3, 0xb4
/* 809818F8  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 809818FC  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981900  38 BF 01 08 */	addi r5, r31, 0x108
/* 80981904  4B FF EE D5 */	bl __register_global_object
/* 80981908  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 8098190C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981910  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 80981914  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981918  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 8098191C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80981920  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 80981924  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981928  D0 23 00 C0 */	stfs f1, 0xc0(r3)
/* 8098192C  D0 03 00 C4 */	stfs f0, 0xc4(r3)
/* 80981930  D0 23 00 C8 */	stfs f1, 0xc8(r3)
/* 80981934  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80981938  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 8098193C  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981940  38 BF 01 14 */	addi r5, r31, 0x114
/* 80981944  4B FF EE 95 */	bl __register_global_object
/* 80981948  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 8098194C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981950  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 80981954  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981958  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 8098195C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80981960  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 80981964  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981968  D0 23 00 CC */	stfs f1, 0xcc(r3)
/* 8098196C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80981970  D0 23 00 D4 */	stfs f1, 0xd4(r3)
/* 80981974  38 63 00 CC */	addi r3, r3, 0xcc
/* 80981978  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 8098197C  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981980  38 BF 01 20 */	addi r5, r31, 0x120
/* 80981984  4B FF EE 55 */	bl __register_global_object
/* 80981988  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 8098198C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981990  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 80981994  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981998  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 8098199C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 809819A0  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 809819A4  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 809819A8  D0 23 00 D8 */	stfs f1, 0xd8(r3)
/* 809819AC  D0 03 00 DC */	stfs f0, 0xdc(r3)
/* 809819B0  D0 23 00 E0 */	stfs f1, 0xe0(r3)
/* 809819B4  38 63 00 D8 */	addi r3, r3, 0xd8
/* 809819B8  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 809819BC  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 809819C0  38 BF 01 2C */	addi r5, r31, 0x12c
/* 809819C4  4B FF EE 15 */	bl __register_global_object
/* 809819C8  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 809819CC  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 809819D0  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 809819D4  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 809819D8  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 809819DC  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 809819E0  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 809819E4  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 809819E8  D0 23 00 E4 */	stfs f1, 0xe4(r3)
/* 809819EC  D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 809819F0  D0 23 00 EC */	stfs f1, 0xec(r3)
/* 809819F4  38 63 00 E4 */	addi r3, r3, 0xe4
/* 809819F8  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 809819FC  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981A00  38 BF 01 38 */	addi r5, r31, 0x138
/* 80981A04  4B FF ED D5 */	bl __register_global_object
/* 80981A08  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 80981A0C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981A10  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80981A14  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981A18  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 80981A1C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80981A20  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80981A24  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981A28  D0 23 00 F0 */	stfs f1, 0xf0(r3)
/* 80981A2C  D0 03 00 F4 */	stfs f0, 0xf4(r3)
/* 80981A30  D0 23 00 F8 */	stfs f1, 0xf8(r3)
/* 80981A34  38 63 00 F0 */	addi r3, r3, 0xf0
/* 80981A38  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 80981A3C  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981A40  38 BF 01 44 */	addi r5, r31, 0x144
/* 80981A44  4B FF ED 95 */	bl __register_global_object
/* 80981A48  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 80981A4C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981A50  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80981A54  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981A58  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 80981A5C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80981A60  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80981A64  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981A68  D0 23 00 FC */	stfs f1, 0xfc(r3)
/* 80981A6C  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 80981A70  D0 23 01 04 */	stfs f1, 0x104(r3)
/* 80981A74  38 63 00 FC */	addi r3, r3, 0xfc
/* 80981A78  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 80981A7C  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981A80  38 BF 01 50 */	addi r5, r31, 0x150
/* 80981A84  4B FF ED 55 */	bl __register_global_object
/* 80981A88  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 80981A8C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981A90  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80981A94  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981A98  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 80981A9C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80981AA0  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80981AA4  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981AA8  D0 23 01 08 */	stfs f1, 0x108(r3)
/* 80981AAC  D0 03 01 0C */	stfs f0, 0x10c(r3)
/* 80981AB0  D0 23 01 10 */	stfs f1, 0x110(r3)
/* 80981AB4  38 63 01 08 */	addi r3, r3, 0x108
/* 80981AB8  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 80981ABC  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981AC0  38 BF 01 5C */	addi r5, r31, 0x15c
/* 80981AC4  4B FF ED 15 */	bl __register_global_object
/* 80981AC8  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 80981ACC  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981AD0  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80981AD4  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981AD8  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 80981ADC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80981AE0  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80981AE4  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981AE8  D0 23 01 14 */	stfs f1, 0x114(r3)
/* 80981AEC  D0 03 01 18 */	stfs f0, 0x118(r3)
/* 80981AF0  D0 23 01 1C */	stfs f1, 0x11c(r3)
/* 80981AF4  38 63 01 14 */	addi r3, r3, 0x114
/* 80981AF8  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 80981AFC  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981B00  38 BF 01 68 */	addi r5, r31, 0x168
/* 80981B04  4B FF EC D5 */	bl __register_global_object
/* 80981B08  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 80981B0C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981B10  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80981B14  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981B18  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 80981B1C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80981B20  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80981B24  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981B28  D0 23 01 20 */	stfs f1, 0x120(r3)
/* 80981B2C  D0 03 01 24 */	stfs f0, 0x124(r3)
/* 80981B30  D0 23 01 28 */	stfs f1, 0x128(r3)
/* 80981B34  38 63 01 20 */	addi r3, r3, 0x120
/* 80981B38  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 80981B3C  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981B40  38 BF 01 74 */	addi r5, r31, 0x174
/* 80981B44  4B FF EC 95 */	bl __register_global_object
/* 80981B48  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 80981B4C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981B50  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80981B54  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981B58  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 80981B5C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80981B60  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80981B64  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981B68  D0 23 01 2C */	stfs f1, 0x12c(r3)
/* 80981B6C  D0 03 01 30 */	stfs f0, 0x130(r3)
/* 80981B70  D0 23 01 34 */	stfs f1, 0x134(r3)
/* 80981B74  38 63 01 2C */	addi r3, r3, 0x12c
/* 80981B78  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 80981B7C  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981B80  38 BF 01 80 */	addi r5, r31, 0x180
/* 80981B84  4B FF EC 55 */	bl __register_global_object
/* 80981B88  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 80981B8C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981B90  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80981B94  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981B98  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 80981B9C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80981BA0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80981BA4  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981BA8  D0 23 01 38 */	stfs f1, 0x138(r3)
/* 80981BAC  D0 03 01 3C */	stfs f0, 0x13c(r3)
/* 80981BB0  D0 23 01 40 */	stfs f1, 0x140(r3)
/* 80981BB4  38 63 01 38 */	addi r3, r3, 0x138
/* 80981BB8  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 80981BBC  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981BC0  38 BF 01 8C */	addi r5, r31, 0x18c
/* 80981BC4  4B FF EC 15 */	bl __register_global_object
/* 80981BC8  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 80981BCC  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981BD0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80981BD4  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981BD8  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 80981BDC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80981BE0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80981BE4  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981BE8  D0 23 01 44 */	stfs f1, 0x144(r3)
/* 80981BEC  D0 03 01 48 */	stfs f0, 0x148(r3)
/* 80981BF0  D0 23 01 4C */	stfs f1, 0x14c(r3)
/* 80981BF4  38 63 01 44 */	addi r3, r3, 0x144
/* 80981BF8  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 80981BFC  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981C00  38 BF 01 98 */	addi r5, r31, 0x198
/* 80981C04  4B FF EB D5 */	bl __register_global_object
/* 80981C08  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 80981C0C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981C10  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80981C14  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981C18  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 80981C1C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80981C20  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80981C24  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981C28  D0 23 01 50 */	stfs f1, 0x150(r3)
/* 80981C2C  D0 03 01 54 */	stfs f0, 0x154(r3)
/* 80981C30  D0 23 01 58 */	stfs f1, 0x158(r3)
/* 80981C34  38 63 01 50 */	addi r3, r3, 0x150
/* 80981C38  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 80981C3C  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981C40  38 BF 01 A4 */	addi r5, r31, 0x1a4
/* 80981C44  4B FF EB 95 */	bl __register_global_object
/* 80981C48  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 80981C4C  C0 23 6F 14 */	lfs f1, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80981C50  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80981C54  3C 60 80 98 */	lis r3, lit_4766@ha /* 0x80986F24@ha */
/* 80981C58  C0 03 6F 24 */	lfs f0, lit_4766@l(r3)  /* 0x80986F24@l */
/* 80981C5C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80981C60  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80981C64  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 80981C68  D0 23 01 5C */	stfs f1, 0x15c(r3)
/* 80981C6C  D0 03 01 60 */	stfs f0, 0x160(r3)
/* 80981C70  D0 23 01 64 */	stfs f1, 0x164(r3)
/* 80981C74  38 63 01 5C */	addi r3, r3, 0x15c
/* 80981C78  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 80981C7C  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80981C80  38 BF 01 B0 */	addi r5, r31, 0x1b0
/* 80981C84  4B FF EB 55 */	bl __register_global_object
/* 80981C88  38 00 00 01 */	li r0, 1
/* 80981C8C  98 1F 00 5C */	stb r0, 0x5c(r31)
lbl_80981C90:
/* 80981C90  7F C3 F3 78 */	mr r3, r30
/* 80981C94  4B FF F4 75 */	bl isM___11daNpcChat_cFv
/* 80981C98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80981C9C  38 00 00 03 */	li r0, 3
/* 80981CA0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80981CA4  80 63 00 04 */	lwz r3, 4(r3)
/* 80981CA8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80981CAC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80981CB0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80981CB4  7C 63 02 14 */	add r3, r3, r0
/* 80981CB8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80981CBC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80981CC0  4B 9C 47 F1 */	bl PSMTXCopy
/* 80981CC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80981CC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80981CCC  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 80981CD0  38 9F 01 BC */	addi r4, r31, 0x1bc
/* 80981CD4  7C 84 02 14 */	add r4, r4, r0
/* 80981CD8  38 BE 05 38 */	addi r5, r30, 0x538
/* 80981CDC  4B 9C 50 91 */	bl PSMTXMultVec
/* 80981CE0  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80981CE4  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80981CE8  2C 1D 00 10 */	cmpwi r29, 0x10
/* 80981CEC  40 80 00 1C */	bge lbl_80981D08
/* 80981CF0  3C 60 80 99 */	lis r3, a_prmTbl_M@ha /* 0x809898D4@ha */
/* 80981CF4  38 63 98 D4 */	addi r3, r3, a_prmTbl_M@l /* 0x809898D4@l */
/* 80981CF8  57 A0 30 32 */	slwi r0, r29, 6
/* 80981CFC  7C 63 02 14 */	add r3, r3, r0
/* 80981D00  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 80981D04  48 00 00 18 */	b lbl_80981D1C
lbl_80981D08:
/* 80981D08  3C 60 80 99 */	lis r3, a_prmTbl_W@ha /* 0x8098B3CC@ha */
/* 80981D0C  38 63 B3 CC */	addi r3, r3, a_prmTbl_W@l /* 0x8098B3CC@l */
/* 80981D10  57 A0 30 32 */	slwi r0, r29, 6
/* 80981D14  7C 63 02 14 */	add r3, r3, r0
/* 80981D18  A8 03 FC 1C */	lha r0, -0x3e4(r3)
lbl_80981D1C:
/* 80981D1C  7C 00 07 34 */	extsh r0, r0
/* 80981D20  3C 60 80 98 */	lis r3, lit_4768@ha /* 0x80986F2C@ha */
/* 80981D24  C8 23 6F 2C */	lfd f1, lit_4768@l(r3)  /* 0x80986F2C@l */
/* 80981D28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80981D2C  90 01 01 84 */	stw r0, 0x184(r1)
/* 80981D30  3C 00 43 30 */	lis r0, 0x4330
/* 80981D34  90 01 01 80 */	stw r0, 0x180(r1)
/* 80981D38  C8 01 01 80 */	lfd f0, 0x180(r1)
/* 80981D3C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80981D40  EC 22 00 2A */	fadds f1, f2, f0
/* 80981D44  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80981D48  D0 1E 0E 3C */	stfs f0, 0xe3c(r30)
/* 80981D4C  D0 3E 0E 40 */	stfs f1, 0xe40(r30)
/* 80981D50  D0 7E 0E 44 */	stfs f3, 0xe44(r30)
/* 80981D54  88 1E 0E 38 */	lbz r0, 0xe38(r30)
/* 80981D58  28 00 00 02 */	cmplwi r0, 2
/* 80981D5C  40 82 01 00 */	bne lbl_80981E5C
/* 80981D60  88 1E 0E 20 */	lbz r0, 0xe20(r30)
/* 80981D64  28 00 00 00 */	cmplwi r0, 0
/* 80981D68  40 82 01 0C */	bne lbl_80981E74
/* 80981D6C  C0 1E 0E 3C */	lfs f0, 0xe3c(r30)
/* 80981D70  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80981D74  C0 1E 0E 40 */	lfs f0, 0xe40(r30)
/* 80981D78  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80981D7C  C0 1E 0E 44 */	lfs f0, 0xe44(r30)
/* 80981D80  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80981D84  88 1E 0E 21 */	lbz r0, 0xe21(r30)
/* 80981D88  28 00 00 01 */	cmplwi r0, 1
/* 80981D8C  40 81 00 E8 */	ble lbl_80981E74
/* 80981D90  3B E0 00 01 */	li r31, 1
/* 80981D94  3B A0 00 04 */	li r29, 4
/* 80981D98  48 00 00 2C */	b lbl_80981DC4
lbl_80981D9C:
/* 80981D9C  38 1D 0E 24 */	addi r0, r29, 0xe24
/* 80981DA0  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80981DA4  28 03 00 00 */	cmplwi r3, 0
/* 80981DA8  41 82 00 14 */	beq lbl_80981DBC
/* 80981DAC  38 83 0E 3C */	addi r4, r3, 0xe3c
/* 80981DB0  38 7E 05 50 */	addi r3, r30, 0x550
/* 80981DB4  7C 65 1B 78 */	mr r5, r3
/* 80981DB8  4B 9C 52 D9 */	bl PSVECAdd
lbl_80981DBC:
/* 80981DBC  3B FF 00 01 */	addi r31, r31, 1
/* 80981DC0  3B BD 00 04 */	addi r29, r29, 4
lbl_80981DC4:
/* 80981DC4  88 1E 0E 21 */	lbz r0, 0xe21(r30)
/* 80981DC8  7C 1F 00 00 */	cmpw r31, r0
/* 80981DCC  41 80 FF D0 */	blt lbl_80981D9C
/* 80981DD0  38 61 00 08 */	addi r3, r1, 8
/* 80981DD4  38 9E 05 50 */	addi r4, r30, 0x550
/* 80981DD8  3C A0 80 98 */	lis r5, lit_4769@ha /* 0x80986F34@ha */
/* 80981DDC  C8 25 6F 34 */	lfd f1, lit_4769@l(r5)  /* 0x80986F34@l */
/* 80981DE0  90 01 01 84 */	stw r0, 0x184(r1)
/* 80981DE4  3C 00 43 30 */	lis r0, 0x4330
/* 80981DE8  90 01 01 80 */	stw r0, 0x180(r1)
/* 80981DEC  C8 01 01 80 */	lfd f0, 0x180(r1)
/* 80981DF0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80981DF4  4B 8E 4E 25 */	bl __dv__4cXyzCFf
/* 80981DF8  C0 01 00 08 */	lfs f0, 8(r1)
/* 80981DFC  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80981E00  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80981E04  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80981E08  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80981E0C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80981E10  38 A0 00 01 */	li r5, 1
/* 80981E14  38 60 00 04 */	li r3, 4
/* 80981E18  48 00 00 34 */	b lbl_80981E4C
lbl_80981E1C:
/* 80981E1C  38 03 0E 24 */	addi r0, r3, 0xe24
/* 80981E20  7C 9E 00 2E */	lwzx r4, r30, r0
/* 80981E24  28 04 00 00 */	cmplwi r4, 0
/* 80981E28  41 82 00 1C */	beq lbl_80981E44
/* 80981E2C  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 80981E30  D0 04 05 50 */	stfs f0, 0x550(r4)
/* 80981E34  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80981E38  D0 04 05 54 */	stfs f0, 0x554(r4)
/* 80981E3C  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 80981E40  D0 04 05 58 */	stfs f0, 0x558(r4)
lbl_80981E44:
/* 80981E44  38 A5 00 01 */	addi r5, r5, 1
/* 80981E48  38 63 00 04 */	addi r3, r3, 4
lbl_80981E4C:
/* 80981E4C  88 1E 0E 21 */	lbz r0, 0xe21(r30)
/* 80981E50  7C 05 00 00 */	cmpw r5, r0
/* 80981E54  41 80 FF C8 */	blt lbl_80981E1C
/* 80981E58  48 00 00 1C */	b lbl_80981E74
lbl_80981E5C:
/* 80981E5C  C0 1E 0E 3C */	lfs f0, 0xe3c(r30)
/* 80981E60  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80981E64  C0 1E 0E 40 */	lfs f0, 0xe40(r30)
/* 80981E68  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80981E6C  C0 1E 0E 44 */	lfs f0, 0xe44(r30)
/* 80981E70  D0 1E 05 58 */	stfs f0, 0x558(r30)
lbl_80981E74:
/* 80981E74  38 60 00 01 */	li r3, 1
/* 80981E78  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 80981E7C  4B 9E 03 AD */	bl _restgpr_29
/* 80981E80  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 80981E84  7C 08 03 A6 */	mtlr r0
/* 80981E88  38 21 01 A0 */	addi r1, r1, 0x1a0
/* 80981E8C  4E 80 00 20 */	blr 
