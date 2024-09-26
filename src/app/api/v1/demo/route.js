import {NextResponse} from "next/server";
import {PrismaClient} from "@prisma/client";

export async function GET(req, res) {
    // Insert one
    const prisma = new PrismaClient();

    await prisma.brands.create(
        {
            data: {
                brandName: "Brand 1",
                BrandImg: "Something.png"
            }
        }
    );

    return NextResponse.json({status: "Success"});
    // Insert many
    // Relational Insert
    // Update one
    // Delete one
    // Find one
}